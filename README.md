# bash-tools

Wie der Name schon sagt, möchte ich hier meine Skripte zur täglichen und nicht alltäglichen Arbeit verwalten. Vor allem aber lerne ich bash. ;-)

## mkproject.sh

* Nimmt den ersten Parameter als Projektname
* Falls keine Parameter angegeben sind, den Projektnamen erfragen
* Legt den Projektordner an und wechselt dann in diesen Ordner
* Legt dort die Ordner 0_OUT, 0_TMP images, src an
* Legt eine build.xml an
* Legt ein Verzeichnis auf dem Web-Server an.

## mkgit.sh

* wie mkproject.sh
* kein Verzeichnis auf dem Web-Server
* git init
* kopiert vc, vc-git.awk und .gitignore
* lokales git config

## starthugo.sh

* startet hugo-Server im Unterordner "0_HUGO"
