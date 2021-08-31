current=$(pwd)
default_config_file=~/.froglet
models_folder=${current}/models
generators_folder=${current}/generators
output_folder=${current}/out

echo "FROGLET_MODELS_FOLDER=${models_folder}" > ${default_config_file}
echo "FROGLET_GENERATORS_FOLDER=${generators_folder}" >> ${default_config_file}
echo "FROGLET_OUTPUT_FOLDER=${output_folder}" >> ${default_config_file}

printf "\n\nDone!\n\n"

cat ${default_config_file}


