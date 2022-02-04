#!/bin/bash
#
# Nimmt den ersten Parameter als Projektname [x]
# Falls keine Parameter angegeben sind, den Projektnamen erfragen [x]
# Legt den Projektordner an und wechselt dann in diesen Ordner [x]
# Legt dort die Ordner 0_OUT, 0_TMP, images, src an [x]
# Legt ein Verzeichnis auf dem Web-Server an. [x]
# Legt eine build.xml an [x]

if [ -z "$1" ]
	then
		read -p "Projektname? " projektname
	else
		projektname=$1
fi

mkdir "$projektname"
cd "$projektname"
mkdir "0_OUT"
mkdir "0_TMP"
mkdir "images"
mkdir "src"
echo -e "<?xml version="1.0"?>\n\n" > build.xml
echo -e "<project name=\"$projektname\" basedir=\".\">\n\n\n" >> build.xml
echo "</project>" >> build.xml
cp -av $HOME/jho-lib/vcTeX/. ./
git init
git config user.name "Josh"
git config user.email "joerg@jho-home.de"
cp -av $HOME/jho-lib/4Git/gitignore ./.gitignore
