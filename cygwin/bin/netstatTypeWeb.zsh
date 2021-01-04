#!/bin/zsh

#Colourises the netstat return with grep

#colours
export BLACK='0;30'
export RED='0;31'
export GREEN='0;32'
export BROWN='0;33'
export BLUE='0;34'
export PURPLE='0;35'
export CYAN='0;36'
export LIGHT_GREY='0;37'
export DARK_GREY='1;30'
export LIGHT_RED='1;31'
export LIGHT_GREEN='1;32'
export YELLOW='1;33'
export LIGHT_BLUE='1;34'
export LIGHT_PURPLE='1;35'
export LIGHT_CYAN='1;36'
export WHITE='1;37'
export DEFAULT='0'

#more colours
#export PINK='38;5;211'
export ORANGE='38;5;202'
#export SKYBLUE='38;5;111'
export MEDIUMGREY='38;5;246'
export LAVENDER='38;5;183'
#export TAN='38;5;179'
export FOREST='38;5;22'
export MAROON='38;5;52'
export HOTPINK='38;5;198'
export MINTGREEN='38;5;121'
#export LIGHTORANGE='38;5;215'
export LIGHTRED='38;5;203'
export JADE='38;5;35'
export LIME='38;5;154'
### background colors
export PINK_BG='48;5;211'
export ORANGE_BG='48;5;203'
export SKYBLUE_BG='48;5;111'
export MEDIUMGREY_BG='48;5;246'
export LAVENDER_BG='48;5;183'
export TAN_BG='48;5;179'
export FOREST_BG='48;5;22'
export MAROON_BG='48;5;52'
export HOTPINK_BG='48;5;198'
export MINTGREEN_BG='48;5;121'
export LIGHTORANGE_BG='48;5;215'
export LIGHTRED_BG='48;5;203'
export JADE_BG='48;5;35'
export LIME_BG='48;5;154'

#Warnings
export WARN1='Can not obtain ownership information|$'
  export WARNCOLOR1=$LIGHT_RED

#States
export STATE1='ESTABLISHED|$'
	export STATECOLOR1=$GREEN
export STATE2='LISTENING|$'
	export STATECOLOR2=$PURPLE
export STATE3='WAITING|$'
	export STATECOLOR3=$LIGHT_GREY
export STATE4='CLOSE_WAIT|$'
	export STATECOLOR4=$DARK_GREY
export STATE5='TIME_WAIT|$'
	export STATECOLOR5=$CYAN
export STATE6='BOUND|$'
  export STATECOLOR6=$BLUE
export STATE7='SYN_SENT|$'
  export STATECOLOR7=$BROWN

#Search Terms
  ## Protocols
  export TERM1000='TCP|$'
  	export TERMCOLOR1000=$PURPLE
  export TERM1100='UDP|$'
  	export TERMCOLOR1100=$GREEN
  ## Generic Windows
  export TERM2000='\[DCProtectService.exe\]|$'
  	export TERMCOLOR2000=$DARK_GREY
  export TERM2100='\[spoolsv.exe\]|wmiprvse.exe|PeerDistSvc|$'
  	export TERMCOLOR2100=$DARK_GREY
  export TERM2200='\[CcmExec.exe\]|$'
  	export TERMCOLOR2200=$DARK_GREY
  export TERM2300='\[plugin_host.exe\]|$'
  	export TERMCOLOR2300=$DARK_GREY
  export TERM2400='\[mDNSResponder.exe\]|$'
  	export TERMCOLOR2400=$DARK_GREY
  export TERM2500='\[DCNotifier.exe\]|$'
  	export TERMCOLOR2500=$DARK_GREY
  export TERM2600='\[UcMapi.exe\]|$'
  	export TERMCOLOR2600=$DARK_GREY
  export TERM2700='\[svchost.exe\]|$'
    export TERMCOLOR2700=$DARK_GREY
    export TERM2800='\[WpnService\]|$'
      export TERMCOLOR2800=$DARK_GREY
  ## Office Applications
  export TERM3000='\[lync.exe\]|$'
  	export TERMCOLOR3000=$BROWN
  export TERM3100='\[OUTLOOK.EXE\]|\[SfdcMsOl.exe\]|$' #SfdcMsOl is Salesforce for Outlook
  	export TERMCOLOR3100=$BROWN
  export TERM3200='\[Excel.exe\]|$'
  	export TERMCOLOR3200=$BROWN
  export TERM3300='\[HxTsr.exe\]|$' #something to do with Office 2016 update
  	export TERMCOLOR3300=$BROWN
  ## Apple
  export TERM4000='\[AppleMobileDeviceService.exe\]|$'
  	export TERMCOLOR4000=$LIGHT_GREEN
  export TERM4100='\[iTunesHelper.exe\]|$'
  	export TERMCOLOR4100=$LIGHT_GREEN
  export TERM4200='\[APSDaemon.exe\]|$'
  	export TERMCOLOR4200=$LIGHT_GREEN
  ## Browsers
  export TERM5000='\[firefox.exe\]|$'
  	export TERMCOLOR5000=$CYAN
  export TERM5100='\[chrome.exe\]|$'
    export TERMCOLOR5100=$CYAN
  export TERM5110='\[vivaldi.exe\]|$'
    export TERMCOLOR5110=$CYAN
  export TERM5200='\[explorer.exe\]|$'
    export TERMCOLOR5200=$CYAN
  ## Cloud Storage
  export TERM6000='\[Dropbox.exe\]|$'
  	export TERMCOLOR6000=$LIGHT_BLUE
  export TERM6100='\[iCloudServices.exe\]|$'
  	export TERMCOLOR6100=$LIGHT_BLUE
  export TERM6110='\[iCloudPhotos.exe\]|$'
    export TERMCOLOR6110=$LIGHT_BLUE
  export TERM6120='\[iCloudDrive.exe\]|$'
    export TERMCOLOR6120=$LIGHT_BLUE
  export TERM6200='\[OneDrive.exe\]|$'
    export TERMCOLOR6200=$LIGHT_BLUE
  ## Communication Applications
    ### Webex
    export TERM7000='\[ptOIEx.exe\]|$'
      export TERMCOLOR7000=$LIGHT_BLUE
    ### Telegram
    export TERM7100='\[Telegram.exe\]|$'
      export TERMCOLOR7100=$LIGHT_BLUE
  ## Misc Applications
  export TERM9001='\[Storyline.exe\]|$'
    export TERMCOLOR9001=$PURPLE


#IP addresses
export IPv4="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b|$"
	export IPv4COLOR=$WHITE
export IPv6="\b(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))\b|$"
	export IPv6COLOR=$PURPLE
export IP1='127.0.0.1|$'
	export IPCOLOR1=$GREEN
export IP2='10.37.3.82|$'
	export IPCOLOR2=$BLUE
export IP3='0.0.0.0|$'
	export IPCOLOR3=$LIGHT_GREEN
export IP4='\[::\]|$'
	export IPCOLOR4=$GREEN
export IP5='\[::1\]|$'
	export IPCOLOR5=$GREEN
export IP6='\*:\*|$'
  export IPCOLOR6=$DARK_GREY


#Ports
  #GENERIC PORT
  #export PORTGEN="\b:(102[4-9]|10[3-9]|1[1-9]{2}|[2-9]{3}|[1-5]{4}|6[0-4]{3}|65[0-4]{2}|655[0-2]|6553[0-5])\b|$"
  export PORTGEN="\b:[1-9]*[0-9]{3}\b|$"
  	export PORTGENCOLOR=$YELLOW
  #HTTPS
  export PORT1=":443\b|$"
  	export PORTCOLOR1=$LIGHT_GREEN
  export PORT1A=":https\b|$"
  	export PORTCOLOR1A=$LIGHT_GREEN
  #HTTP
  export PORT2=":80\b|$"
  	export PORTCOLOR2=$PURPLE
  export PORT2A=":http\b|$"
  	export PORTCOLOR2A=$PURPLE
  #FTP,SSH,Telnet
  export PORT3=":20\b|:21\b|:22\b|:23\b|$"
  	export PORTCOLOR3=$LIGHT_RED
  #MAIL
  export PORT4=":25\b|:109\b|:110\b|$"
  	export PORTCOLOR4=$YELLOW
  #DANGEROUS?
  export PORT5=":31\b|$"
  	export PORTCOLOR5=$YELLOW$LIGHTRED_BG
  #PRIVATE RANGE (roughly)
  export PORT6=":[4-6][0-9]{4}|$"
  	export PORTCOLOR6=$BROWN
  #epmap
  export PORT2A=":epmap\b|$"
  	export PORTCOLOR2A=$CYAN


#  | GREP_COLOR=$IPCOLOR1 grep --color=always -E '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b|$' \

netstat $1 \
  | GREP_COLOR=$WARNCOLOR1 egrep -A 100 -s --color=always $WARN1 \
  | GREP_COLOR=$STATECOLOR1 egrep -A 100 -s --color=always $STATE1 \
  | GREP_COLOR=$STATECOLOR2 egrep -A 100 -s --color=always $STATE2 \
  | GREP_COLOR=$STATECOLOR3 egrep -A 100 -s --color=always $STATE3 \
  | GREP_COLOR=$STATECOLOR4 egrep -A 100 -s --color=always $STATE4 \
  | GREP_COLOR=$STATECOLOR5 egrep -A 100 -s --color=always $STATE5 \
  | GREP_COLOR=$STATECOLOR6 egrep -A 100 -s --color=always $STATE6 \
  | GREP_COLOR=$STATECOLOR7 egrep -A 100 -s --color=always $STATE7 \
  | GREP_COLOR=$TERMCOLOR1000 egrep -A 100 -s --color=always $TERM1000 \
  | GREP_COLOR=$TERMCOLOR1100 egrep -A 100 -s --color=always $TERM1100 \
  | GREP_COLOR=$TERMCOLOR2000 egrep -A 100 -s --color=always $TERM2000 \
  | GREP_COLOR=$TERMCOLOR2100 egrep -A 100 -s --color=always $TERM2100 \
  | GREP_COLOR=$TERMCOLOR2200 egrep -A 100 -s --color=always $TERM2200 \
  | GREP_COLOR=$TERMCOLOR2300 egrep -A 100 -s --color=always $TERM2300 \
  | GREP_COLOR=$TERMCOLOR2400 egrep -A 100 -s --color=always $TERM2400 \
  | GREP_COLOR=$TERMCOLOR2500 egrep -A 100 -s --color=always $TERM2500 \
  | GREP_COLOR=$TERMCOLOR2600 egrep -A 100 -s --color=always $TERM2600 \
  | GREP_COLOR=$TERMCOLOR2700 egrep -A 100 -s --color=always $TERM2700 \
  | GREP_COLOR=$TERMCOLOR2800 egrep -A 100 -s --color=always $TERM2800 \
  | GREP_COLOR=$TERMCOLOR3000 egrep -A 100 -s --color=always $TERM3000 \
  | GREP_COLOR=$TERMCOLOR3100 egrep -A 100 -s --color=always $TERM3100 \
  | GREP_COLOR=$TERMCOLOR3200 egrep -A 100 -s --color=always $TERM3200 \
  | GREP_COLOR=$TERMCOLOR3300 egrep -A 100 -s --color=always $TERM3300 \
  | GREP_COLOR=$TERMCOLOR4000 egrep -A 100 -s --color=always $TERM4000 \
  | GREP_COLOR=$TERMCOLOR4100 egrep -A 100 -s --color=always $TERM4100 \
  | GREP_COLOR=$TERMCOLOR4200 egrep -A 100 -s --color=always $TERM4200 \
  | GREP_COLOR=$TERMCOLOR5000 egrep -A 100 -s --color=always $TERM5000 \
  | GREP_COLOR=$TERMCOLOR5100 egrep -A 100 -s --color=always $TERM5100 \
  | GREP_COLOR=$TERMCOLOR5110 egrep -A 100 -s --color=always $TERM5110 \
  | GREP_COLOR=$TERMCOLOR5200 egrep -A 100 -s --color=always $TERM5200 \
  | GREP_COLOR=$TERMCOLOR6000 egrep -A 100 -s --color=always $TERM6000 \
  | GREP_COLOR=$TERMCOLOR6100 egrep -A 100 -s --color=always $TERM6100 \
  | GREP_COLOR=$TERMCOLOR6110 egrep -A 100 -s --color=always $TERM6110 \
  | GREP_COLOR=$TERMCOLOR6120 egrep -A 100 -s --color=always $TERM6120 \
  | GREP_COLOR=$TERMCOLOR6200 egrep -A 100 -s --color=always $TERM6200 \
  | GREP_COLOR=$TERMCOLOR7000 egrep -A 100 -s --color=always $TERM7000 \
  | GREP_COLOR=$TERMCOLOR7100 egrep -A 100 -s --color=always $TERM7100 \
  | GREP_COLOR=$TERMCOLOR9001 egrep -A 100 -s --color=always $TERM9001 \
  | GREP_COLOR=$IPv4COLOR egrep -A 100 -Es --color=always $IPv4 \
  | GREP_COLOR=$IPv6COLOR egrep -A 100 -Es --color=always $IPv6 \
  | GREP_COLOR=$IPCOLOR1 egrep -A 100 -s --color=always $IP1 \
  | GREP_COLOR=$IPCOLOR2 egrep -A 100 -s --color=always $IP2 \
  | GREP_COLOR=$IPCOLOR3 egrep -A 100 -s --color=always $IP3 \
  | GREP_COLOR=$IPCOLOR4 egrep -A 100 -s --color=always $IP4 \
  | GREP_COLOR=$IPCOLOR5 egrep -A 100 -s --color=always $IP5 \
  | GREP_COLOR=$IPCOLOR6 egrep -A 100 -s --color=always $IP6 \
  | GREP_COLOR=$PORTGENCOLOR egrep -A 100 -Es --color=always $PORTGEN \
  | GREP_COLOR=$PORTCOLOR1 egrep -A 100 -Es --color=always $PORT1 \
  | GREP_COLOR=$PORTCOLOR1A egrep -A 100 -Es --color=always $PORT1A \
  | GREP_COLOR=$PORTCOLOR2 egrep -A 100 -Es --color=always $PORT2 \
  | GREP_COLOR=$PORTCOLOR2A egrep -A 100 -Es --color=always $PORT2A \
  | GREP_COLOR=$PORTCOLOR3 egrep -A 100 -Es --color=always $PORT3 \
  | GREP_COLOR=$PORTCOLOR4 egrep -A 100 -Es --color=always $PORT4 \
  | GREP_COLOR=$PORTCOLOR5 egrep -A 100 -Es --color=always $PORT5 \
  | GREP_COLOR=$PORTCOLOR6 egrep -A 100 -Es --color=always $PORT6 \
  | aha --black --title 'color netstat '$1 > 'colour netstat'$1'.html'

  cygstart 'colour netstat'$1'.html'
