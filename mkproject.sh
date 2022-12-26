#!/bin/bash
#
# Nimmt den ersten Parameter als Projektname [x]
# Falls keine Parameter angegeben sind, den Projektnamen erfragen [x]
# Legt den Projektordner an und wechselt dann in diesen Ordner [x]
# Legt dort die Ordner 0_OUT, 0_TMP, bilder, formate, includes und scripts an [x]
# Wenn $2 mit angegeben wird und "hugo" lautet, wird auch ein Verzeichnis 0_HUGO_$projektname [x]
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
mkdir "bilder"
mkdir "formate"
mkdir "includes"
mkdir "scripts"

if [ -n "$2" ]
then
    if [ "$2" = "hugo" ]
	then
	    hugo new site 0_HUGO -f "yaml"
    fi
fi

echo -e "<?xml version="1.0"?>\n\n" > build.xml
echo -e "<project name=\"$projektname\" basedir=\".\">\n\n\n" >> build.xml
echo "</project>" >> build.xml
cd "$local_www_dir"
mkdir "$projektname"
