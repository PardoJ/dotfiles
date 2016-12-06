###############################################################################
#### SCREEN BASICS

Create						screen -S nom_de_la_session

Screens list				screen -ls
							^aw (^a")

Rattach   					screen -r nom_de_la_session
Wipe a dead screen 			screen -wipe

Detach						^ad
Detach & Close session   	^aDD

New terminal				^ac
Rename terminal				^aA

Go to terminal				^a#
Previous					^ap
Next 						^an

Quit terminal				exit (^aD) (^a:quit)

Split |						^a|
Split -						^aS
Switch						^a<tab>
Kill others					^aQ
Kill current				^aK

Enter copy mode				^a<esc>
Start / Ficnish selection	<enter> <enter>
Paste						^a]
