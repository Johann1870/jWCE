#Parameters
$SiteUrl = "https://hearstpm.sharepoint.com/sites/Careshare1"
$ReportOutput = "C:\Temp\29_Q1_SharedLinks.csv"
$ListName = "AllItems.aspx"
$ListId = "45CE39F86A2A4E0B8D55089CD06FA52F"

#https://hearstpm.sharepoint.com/sites/Careshare1/edu/lms/irr/All%20IRR%20Documents/2025%20-%2029th%20Edition/Q1%20-%20April%202025
#45CE39F8-6A2A-4E0B-8D55-089CD06FA52F
#edu/lms/irr/All IRR Documents
    
#Connect to PnP Online
#Connect-PnPOnline -Url $SiteURL -Interactive
#Connect-PnPOnline -Url $SiteURL -Credential
Connect-PnPOnline -Url $SiteURL -SPOManagementShell
$Ctx = Get-PnPContext
$Results = @()
$global:counter = 0
  
#Get all list items in batches
$ListItems = Get-PnPListItem -List $ListName -PageSize 2000
$ItemCount = $ListItems.Count
   
#Iterate through each list item
ForEach($Item in $ListItems)
{
    Write-Progress -PercentComplete ($global:Counter / ($ItemCount) * 100) -Activity "Getting Shared Links from '$($Item.FieldValues["FileRef"])'" -Status "Processing Items $global:Counter to $($ItemCount)";
 
    #Check if the Item has unique permissions
    $HasUniquePermissions = Get-PnPProperty -ClientObject $Item -Property "HasUniqueRoleAssignments"
    If($HasUniquePermissions)
    {       
        #Get Shared Links
        $SharingInfo = [Microsoft.SharePoint.Client.ObjectSharingInformation]::GetObjectSharingInformation($Ctx, $Item, $false, $false, $false, $true, $true, $true, $true)
        $ctx.Load($SharingInfo)
        $ctx.ExecuteQuery()
         
        ForEach($ShareLink in $SharingInfo.SharingLinks)
        {
            If($ShareLink.Url)
            {           
                If($ShareLink.IsEditLink)
                {
                    $AccessType="Edit"
                }
                ElseIf($shareLink.IsReviewLink)
                {
                    $AccessType="Review"
                }
                Else
                {
                    $AccessType="ViewOnly"
                }
                 
                #Collect the data
                $Results += New-Object PSObject -property $([ordered]@{
                Name  = $Item.FieldValues["FileLeafRef"]           
                RelativeURL = $Item.FieldValues["FileRef"]
                FileType = $Item.FieldValues["File_x0020_Type"]
                ShareLink  = $ShareLink.Url
                ShareLinkAccess  =  $AccessType
                ShareLinkType  = $ShareLink.LinkKind
                AllowsAnonymousAccess  = $ShareLink.AllowsAnonymousAccess
                IsActive  = $ShareLink.IsActive
                Expiration = $ShareLink.Expiration
                })
            }
        }
    }
    $global:counter++
}
$Results | Export-CSV $ReportOutput -NoTypeInformation
Write-host -f Green "Sharing Links Report Generated Successfully!"



