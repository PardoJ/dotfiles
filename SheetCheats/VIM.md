###############################################################################
#### VIM BASICS

Cd						:cd
Display current path	:pwd

Paste mode				:set paste :set nopaste

Undo					u
Historique				:earlier 45s
						:later 3m
Repeat					.

Quit vim				:qa!

###############################################################################
#### BUFFERS

Open file in buffer		:e
Search file to open     :find (<tab>, wildcards)
Write buffer			:w

List buffers  			:buffers :ls
Go to buffer 			:b #
Go to buffer (file)  	:b fil<tab>
Delete buffer   		:bd #

###############################################################################
#### MOVEMENTS

Left, Down, Up, Right		h, j, k, l
Move to column				10|
Start/End line				^, $

Word						w
End word					e
Backward word				b

Go to closing symbol		%
Go to symbol				f<symbol> (F, t, T)

Sentence					(, )
Paragraph					{, }

pgUp (Backward)				^B ^U
pgDown (Forward)			^F ^D
Middle, High, Low			M, H, L
First line, Last line		gg, G

Mark 'a'					ma
Go to mark 'a'				'a

Previous location			^o
Next Location				^i

###############################################################################
#### MODES

################
#### NORMAL ####

#### Motions
Cut						d, dd
Copy					y, dd
Paste					p, P

Concat					<shift>J

#### Actions
Go file					gf 
Go definition			gd, gD
 
#### Replaces
Replace 				:%s/test/test1/g
						:10,20s/test/test2/g
Confirm 				:%s/test/test3/gc

################
#### INSERT ####

Insert					i, I
Append					a, A
Open line				o, O
Substitude				s, S
Replace					r, R

Completion for JUST this file	^x^n
Completion for filenames		^x^f
Completion for CTAGS only		^x^]
Completion for anything			^n
(THEN you can use ^n and ^p to navigate)

################
#### VISUAL ####

Visual Mode				v, V, ^v

Select a paragraph		ap
Select a word			aw
Select a quote content	a"
Select a block ()		ab
 - Same with inner		i

Change					c
Indent					> < =
Delete					x
Switch case				~

###############################################################################
#### VIEWS

New window				:new :vnew
Split current buffer	:sp :vsp
Close other windows		:only
Close current window	:close

Open vertical diff		:vertical diffsplit main.c~
Unking scrool			:set noscrollbind
Move between changes	]c [c
Updata highlights		:diffupdate

Switch to window		^w h, j, k, l
Switch between windows	^ww
Rotate position			^r

Full screen				^w_
Same size				^w=
In/dec crease size		^W+, ^W-


###############################################################################
#### TABS

New tab  				:tabnew
Switch between tabs  	gt, gT
Move a tab to position  :tabm(ove) # (From 0)
Close other tabs  		:tabonly
Rename tab				
Close current tab		:tabc(lose)
Close tab by position	:tabc #

###############################################################################
#### FOLDING

Switch				za
Close, Recurcive	zc, zC
Open, Recurcive		zo, zO
OpenAll				zR
Choose method		:set foldmethod=indent

###############################################################################
#### SEARCH

Find on word occurence			*, #
Search							/
Start & End of a word			\<, \>
Digit							\d
Répetition						\+, \*
Next/Previous search occurence	n, N

###############################################################################
#### TAGS

Generate tags						:MakeTags
To jump to tag under cursor 		^$
For ambigous tags					g^$
To jump back up to the tag stack 	^t, ^T, ^O






###############################################################################
################ EL DIABLO ###################

SNIPPETS
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a

DEBUG
set makeprg=bundle\ exec\ rspec\ -f\ QuickFixFormatter
Then
:make to run  RSpec
:cl to list error
:cc# to jump by number
:cn and :cp to navigate forward/back

################ EL DIABLO ###################
###############################################################################