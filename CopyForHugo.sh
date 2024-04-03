#!/bin/bash
# Skript, um Dateien in das HUGO-Dateisystem zu kopieren.

for j in $(ls $1-kap??.pdc); do
    mkdir ../0_HUGO/content/${j%%????}
    cp $j ../0_HUGO/content/${j%%????}/_index.pdc
    for i in $(ls ${j%%????}_??.pdc); do
        echo $i
        cp $i ../0_HUGO/content/${j%%????}/$i
    done
done

