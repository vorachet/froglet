#!/bin/bash
# Vorachet Jaroensawas 

# Check gsl program
if ! gsl -v  &> /dev/null
then
    printf "\ngsl program could not be found (installation guide https://github.com/imatix/gsl)\n"
    exit
fi

if [ "$#" -eq  "0" ]
then
    printf "\nUse default config file ~/.froglet\n"
    USER_CONFIG_FILE_PATH=~/.froglet
    if [ -f "$USER_CONFIG_FILE_PATH" ]; then
        printf "\nLoading ${USER_CONFIG_FILE_PATH}"
    else 
        printf "\n${USER_CONFIG_FILE_PATH} does not exist."
        printf "\nFroglet usage:"
        printf "\n(Use default config file at ~/.froglet)\n$ froglet\n"
        printf "\n(Use user-defined config file)\n$ froglet <user_defined_config_file>\n"
        printf "\n(Requried variables in the config file)"
        printf "\nFROGLET_MODELS_FOLDER=/somwhere/mymodels"
        printf "\nFROGLET_GENERATORS_FOLDER=/somwhere/mygenerators"
        printf "\nFROGLET_OUTPUT_FOLDER=/somwhere/myoutput\n\n"
        exit
    fi
else
    printf "\nUse user-defined config file ${USER_CONFIG_FILE_PATH}\n"
    USER_CONFIG_FILE_PATH=$1
fi

source ${USER_CONFIG_FILE_PATH}

if [[ -z "${FROGLET_MODELS_FOLDER}" ]]; then
    printf "\nFROGLET_MODELS_FOLDER is undefined in ${FROGLET_MODELS_FOLDER}\n"
    exit
fi

if [[ -z "${FROGLET_GENERATORS_FOLDER}" ]]; then
    printf "\nFROGLET_GENERATORS_FOLDER is undefined in ${FROGLET_GENERATORS_FOLDER}\n"
    exit
fi

if [[ -z "${FROGLET_OUTPUT_FOLDER}" ]]; then
    printf "\nFROGLET_OUTPUT_FOLDER is undefined in ${FROGLET_OUTPUT_FOLDER}\n"
    exit
fi

printf "\n  FROGLET_MODELS_FOLDER = ${FROGLET_MODELS_FOLDER}"
printf "\n  FROGLET_GENERATORS_FOLDER = ${FROGLET_GENERATORS_FOLDER}"
printf "\n  FROGLET_OUTPUT_FOLDER = ${FROGLET_OUTPUT_FOLDER}\n"

printf "\nChoose generator:\n"

cd ${FROGLET_GENERATORS_FOLDER}
select g in * ; do test -n "$g" && break; echo ">>> Invalid Selection"; done
generator=$g

cd ${FROGLET_MODELS_FOLDER}
printf "\nChoose model:\n"
select m in * ; do test -n "$m" && break; echo ">>> Invalid Selection"; done
model=$m

mkdir -p ${FROGLET_OUTPUT_FOLDER}

printf "\nmodel = ${model}\n"
printf "\ngenerator = ${generator}\n"
printf "\noutput_folder ${FROGLET_OUTPUT_FOLDER}\n\n"

cd ${FROGLET_GENERATORS_FOLDER}/${generator}

time gsl -a -p -script:index ${FROGLET_MODELS_FOLDER}/$model ${FROGLET_OUTPUT_FOLDER}

printf "\nIf there is no error,\nthe generated files should be saved in ${FROGLET_OUTPUT_FOLDER}"

printf "\n\nEnjoy using Froglet! - https://github.com/vorachet/froglet \n\n"
