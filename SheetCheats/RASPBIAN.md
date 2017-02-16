# Logiciels

## Préparation
* Unzip putty
* Cp KITTY
* Unzip winSCP
* CREATE PPK key

## Configurations

### KITTY.INI
PSCPPath=.bin/Ssh/PSCP.EXE
PlinkPath=.bin/Ssh/PLINK.EXE
WinSCPPath=.bin/Ssh/WinSCP.exe

### LAUNCHER.BAT
set PROJET=%~dp0
set BIN=%PROJET%\bin
set HOME=%PROJET%\home
set PUTTY=%BIN%\Ssh
tasklist /nh /fi "imagename eq PAGEANT.EXE" | find /i "PAGEANT.EXE" > nul || start %PUTTY%\PAGEANT %HOME%\Keys\raspberry.ppk
start %PUTTY%\kitty_portable.exe
REM -load "rpi"

### PUTTY SESSION
Terminal > Keyboard > Xterm R6
Terminal > Bell > None
Terminal > Feature > Disable application keypad mode
Window > (Uncheck) Two displays scrollbar options
Window > (Check) Two reset scrollbar options
Window > Apparance > Cursor Apparance > Block
Window > Apparance > Font > Dejavu powerline
Window > Apparance > Font quality > Cleartype
Connection > Data > (Fill) Auto-login username (pi)
Connection > Data > Terminal-details > Terminal type string > putty-256color
Connection > SSH > Remote command > which tmux>/dev/null 2>&1 && { tmux -2 attach || tmux -2 new -s default; } || bash -I

# Distant machine

## FIRST TODO
sudo apt-get clean all
sudo apt-get update
sudo apt-get dist-upgrade
sudo apt-get upgrade

sudo apt-get install tmux vim bash-completion irssi mutt htop perl python curl wget w3m manpages-fr git rpi-update raspi-config exuberant-ctags tree
finger

sudo vim /etc/ssh/sshd_config
PasswordAuthentication no 

sudo raspi-config
	1
	2
	4
		1
		2
		3
		4
	6
		High
	7
		A2
		A3 16Mo
		A0
sudo rpi-update

sudo reboot





