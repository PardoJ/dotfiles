************************************
- Variables:

$SHELL
$PS1

************************************
- FICHIERS

/etc/shells
/etc/passwd
/etc/group
/etc/init.d
/dev/null

************************************
- COMMANDES

Folders:
	mkdir			Crée un dossier
	rmdir			Efface un dossier
	tree			Affiche l'arborescence
Files
	touch			Crée un fichier
	rm				Efface un fichier
	file			Détermine le type du fichier
Content
	echo			Affiche une variable
	cat				Affiche tout un fichier
	more			Affiche un fichier par pages
	grep			cherche un texte dans un fichier
	sort			Tri un fichier
	head			Affiche les premieres lignes d'un fichier
	tail
	wc				Compte les lignes
	cut
	uniq
Explore
	ls				Liste les objets du répertoire courant
	cd				Entre dans un répertoire
	find			Trouve un fichier
	pwd				Affiche le répertoire courant
Tailles
	du
	df
Users
	useradd			Ajoute un utilisateur
	passwd			Change le mot de passe d'un utilisateur
	finger			Recherche des informations sur un utilisateur
	who				Affiche qui est loggé
	whoami			Qui suis-je
Shell
	logout			
	exit
	chsh			Change de shell par défault
	history			Liste les commandes utilisées
	alias			Liste les alias en cours
Aide
	help
	man
Executables
	which			Cherche un exécutable dans le path
	whereis			Cherche un exécutable dans les répertoires historiques
	type			Déétermine s'il s'agit d'une commande shell ou externe
Console
	tee				Lis l'entrée standart et écrit dans un fichier et la sortie standart
	|
	>>
	>
	&
	2>				Redirige la sortie d'erreurs
	&1				Sortie standart
	;	
	* ?
	[0-9 [a-z]
	^ $
	~ # ( ) \ @ !
DIVERS
	date '+%d/%m/%y'
	
	
	
	

echo -e 'hhuh\njijiji'
echo `pwd`
echo $(pwd)
ls *.???*
ls *[aeiou]?.[0-9]
cp /var/log/[b-m]?*[!3-8] /tmp
