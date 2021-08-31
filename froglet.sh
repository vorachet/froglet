#!/bin/bash
# Vorachet Jaroensawas 

printf "\nChoose generator:\n"
mkdir -p out
cd generators
select g in * ; do test -n "$g" && break; echo ">>> Invalid Selection"; done
generator=$g

cd ../models

select m in * ; do test -n "$m" && break; echo ">>> Invalid Selection"; done
model=$m

cd ..
output_folder=./out/${generator}/${model}
mkdir -p ${output_folder}

printf "\nmodel = ${model}\n"
printf "\ngenerator = ${generator}\n"
printf "\noutput_folder ${output_folder}\n\n"

echo "gsl -a -script:index ../models/$model ${output_folder}"

cd ./generators/$generator

gsl -a -script:index ../../models/$model ../../${output_folder}

