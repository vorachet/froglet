#!/bin/bash
# Vorachet Jaroensawas 

printf "\nChoose generator:\n"
mkdir -p out
cd generators
select g in * ; do test -n "$g" && break; echo ">>> Invalid Selection"; done
generator=$g

cd ../models

printf "\nChoose model:\n"
select m in * ; do test -n "$m" && break; echo ">>> Invalid Selection"; done
model=$m

cd ..
output_folder=./out/${generator}/${model}
mkdir -p ${output_folder}

printf "\nmodel = ${model}\n"
printf "\ngenerator = ${generator}\n"
printf "\noutput_folder ${output_folder}\n\n"

cd ./generators/$generator

gsl -a -p -script:index ../../models/$model ../../${output_folder}

printf "\n\nDone!\n\n"
printf "\nThe generated files are saved in ${output_folder}\n"

cd ../../${output_folder}
ls -la


printf "\n\nEnjoy using Froglet! - https://github.com/vorachet/froglet \n\n"
