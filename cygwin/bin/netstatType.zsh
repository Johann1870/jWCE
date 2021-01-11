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
export PINK='38;5;211'
export ORANGE='38;5;202'
export SKYBLUE='38;5;111'
export MEDIUMGREY='38;5;246'
export LAVENDER='38;5;183'
export TAN='38;5;179'
export FOREST='38;5;22'
export MAROON='38;5;52'
export HOTPINK='38;5;198'
export MINTGREEN='38;5;121'
export LIGHTORANGE='38;5;215'
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
	export STATECOLOR2=$LAVENDER
export STATE3='WAITING|$'
	export STATECOLOR3=$TAN
export STATE4='CLOSE_WAIT|$'
	export STATECOLOR4=$ORANGE
export STATE5='TIME_WAIT|$'
	export STATECOLOR5=$YELLOW
export STATE6='BOUND|$'
  export STATECOLOR6=$BLUE

#Search Terms
export TERM1='TCP|$'
	export TERMCOLOR1=$PURPLE
export TERM2='UDP|$'
	export TERMCOLOR2=$FOREST
export TERM3='\[Dropbox.exe\]|$'
	export TERMCOLOR3=$SKYBLUE
export TERM4='\[firefox.exe\]|$'
	export TERMCOLOR4=$ORANGE
export TERM5='\[DCProtectService.exe\]|$'
	export TERMCOLOR5=$BLUE
export TERM6='\[lync.exe\]|$'
	export TERMCOLOR6=$PINK
export TERM7='\[OUTLOOK.EXE\]|\[SfdcMsOl.exe\]|$'
	export TERMCOLOR7=$LIGHTORANGE
export TERM8='\[spoolsv.exe\]|wmiprvse.exe|PeerDistSvc|$'
	export TERMCOLOR8=$TAN
export TERM9='\[CcmExec.exe\]|$'
	export TERMCOLOR9=$MINTGREEN
export TERM10='\[plugin_host.exe\]|$'
	export TERMCOLOR10=$LIME
export TERM11='\[mDNSResponder.exe\]|$'
	export TERMCOLOR11=$YELLOW
export TERM12='\[AppleMobileDeviceService.exe\]|$'
	export TERMCOLOR12=$JADE
export TERM13='\[iTunesHelper.exe\]|$'
	export TERMCOLOR13=$MINTGREEN
export TERM14='\[DCNotifier.exe\]|$'
	export TERMCOLOR14=$BLUE
export TERM15='\[UcMapi.exe\]|$'
	export TERMCOLOR15=$LIGHT_GREEN
export TERM16='\[svchost.exe\]|$'
  export TERMCOLOR16=$LIGHTORANGE
export TERM17='\[chrome.exe\]|$'
  export TERMCOLOR17=$YELLOW
export TERM18='\[explorer.exe\]|$'
  export TERMCOLOR18=$TAN

#IP addresses
export IPv4="\b([0-9]{1,3}\.){3}[0-9]{1,3}\b|$"
	export IPv4COLOR=$WHITE
export IPv6="\b(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))\b|$"
	export IPv6COLOR=$LAVENDER
export IP1='127.0.0.1|$'
	export IPCOLOR1=$FOREST
export IP2='10.37.3.82|$'
	export IPCOLOR2=$BLUE
export IP3='0.0.0.0|$'
	export IPCOLOR3=$FOREST
export IP4='\[::\]|$'
	export IPCOLOR4=$FOREST
export IP5='\[::1\]|$'
	export IPCOLOR5=$FOREST
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
  #HTTP
  export PORT2=":80\b|$"
  	export PORTCOLOR2=$PURPLE
  #FTP,SSH,Telnet
  export PORT3=":20\b|:21\b|:22\b|:23\b|$"
  	export PORTCOLOR3=$LIGHT_RED
  #MAIL
  export PORT4=":25\b|:109\b|:110\b|$"
  	export PORTCOLOR4=$ORANGE
  #DANGEROUS?
  export PORT5=":31\b|$"
  	export PORTCOLOR5=$YELLOW$LIGHTRED_BG
  #PRIVATE RANGE (roughly)
  export PORT6=":[4-6][0-9]{4}|$"
  	export PORTCOLOR6=$BROWN


#  | GREP_COLOR=$IPCOLOR1 grep --color=always -E '\b([0-9]{1,3}\.){3}[0-9]{1,3}\b|$' \

netstat $1 \
  | GREP_COLOR=$WARNCOLOR1 egrep -A 100 -s --color=always $WARN1 \
  | GREP_COLOR=$STATECOLOR1 egrep -A 100 -s --color=always $STATE1 \
  | GREP_COLOR=$STATECOLOR2 egrep -A 100 -s --color=always $STATE2 \
  | GREP_COLOR=$STATECOLOR3 egrep -A 100 -s --color=always $STATE3 \
  | GREP_COLOR=$STATECOLOR4 egrep -A 100 -s --color=always $STATE4 \
  | GREP_COLOR=$STATECOLOR5 egrep -A 100 -s --color=always $STATE5 \
  | GREP_COLOR=$STATECOLOR6 egrep -A 100 -s --color=always $STATE6 \
  | GREP_COLOR=$TERMCOLOR1 egrep -A 100 -s --color=always $TERM1 \
  | GREP_COLOR=$TERMCOLOR2 egrep -A 100 -s --color=always $TERM2 \
  | GREP_COLOR=$TERMCOLOR3 egrep -A 100 -s --color=always $TERM3 \
  | GREP_COLOR=$TERMCOLOR4 egrep -A 100 -s --color=always $TERM4 \
  | GREP_COLOR=$TERMCOLOR5 egrep -A 100 -s --color=always $TERM5 \
  | GREP_COLOR=$TERMCOLOR6 egrep -A 100 -s --color=always $TERM6 \
  | GREP_COLOR=$TERMCOLOR7 egrep -A 100 -s --color=always $TERM7 \
  | GREP_COLOR=$TERMCOLOR8 egrep -A 100 -s --color=always $TERM8 \
  | GREP_COLOR=$TERMCOLOR9 egrep -A 100 -s --color=always $TERM9 \
  | GREP_COLOR=$TERMCOLOR10 egrep -A 100 -s --color=always $TERM10 \
  | GREP_COLOR=$TERMCOLOR11 egrep -A 100 -s --color=always $TERM11 \
  | GREP_COLOR=$TERMCOLOR12 egrep -A 100 -s --color=always $TERM12 \
  | GREP_COLOR=$TERMCOLOR13 egrep -A 100 -s --color=always $TERM13 \
  | GREP_COLOR=$TERMCOLOR14 egrep -A 100 -s --color=always $TERM14 \
  | GREP_COLOR=$TERMCOLOR15 egrep -A 100 -s --color=always $TERM15 \
  | GREP_COLOR=$TERMCOLOR16 egrep -A 100 -s --color=always $TERM16 \
  | GREP_COLOR=$TERMCOLOR17 egrep -A 100 -s --color=always $TERM17 \
  | GREP_COLOR=$TERMCOLOR18 egrep -A 100 -s --color=always $TERM18 \
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
  | GREP_COLOR=$PORTCOLOR2 egrep -A 100 -Es --color=always $PORT2 \
  | GREP_COLOR=$PORTCOLOR3 egrep -A 100 -Es --color=always $PORT3 \
  | GREP_COLOR=$PORTCOLOR4 egrep -A 100 -Es --color=always $PORT4 \
  | GREP_COLOR=$PORTCOLOR5 egrep -A 100 -Es --color=always $PORT5 \
  | GREP_COLOR=$PORTCOLOR6 egrep -A 100 -Es --color=always $PORT6 \
  | MORE