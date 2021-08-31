# FROGLET

Automation workflow for GSL (https://github.com/imatix/gsl)


# Installation 

```
brew tab https://github.com/vorachet/froglet
brew install froglet
```

## Usage

```
$ froglet
```

The output when configuration is undefined
```
Froglet usage:
(Use default config file at ~/.froglet)
$ froglet

(Use user-defined config file)
$ froglet <user_defined_config_file>

(Requried variables in the config file)
FROGLET_MODELS_FOLDER=/somwhere/mymodels
FROGLET_GENERATORS_FOLDER=/somwhere/mygenerators
FROGLET_OUTPUT_FOLDER=/somwhere/myoutput
```

# Project directory

```
.
├── README.md
├── froglet.sh                  # Froglet script provides you the workflow
├── generators                  # fixed folder name for storing genrators
│   └── js_helloworld
│       ├── index.gsl
│       └── program.gsl
├── models                      # fixed folder name for storing models
│   └── my_helloworld.xml
```

# Creating generators and models

## Writing a generator

Generator term with this project is a collection of GSL templates saved in one folder for generating specific artifacts. 
Each Froglet workflow execution provided by the Froglet script, you will have to choose the generator name from the list. 
By writing a new generator, you have to follow the following steps.

1. Go to your generators folder 
2. Create a new folder. The folder name will be displayed as a generator name with the Froglet script
3. Each genertor folder must have  ```index.gsl```, which is root gsl template file 

### Generator using single GSL template file
This is the structure for a generator that uses only one GSL template file
```
<FROGLET_GENERATORS_FOLDER>
    /MyGenerator
        /index.gsl
```

### Generator using multiple GSL template files

A generator can have more than one GSL template file, where ```index.gsl``` can include helper GSL template files
This is the structure for a generator that uses multiple GSL template files
```
<FROGLET_GENERATORS_FOLDER>
    /MyGenerator
        /index.gsl
        /helper1.gsl
        /helper2.gsl
```

### When you have multiple generators

This is the structure when you have multiple generators
```
<FROGLET_GENERATORS_FOLDER>
    /MyGenerator1
        /index.gsl
        /helper1.gsl
        /helper2.gsl
    /MyGenerator2
        /index.gsl
        /helper1.gsl
        /helper2.gsl
```
## Writing a model 

Model term with this project is a GSL model. It is an XML file used to describe metamodel and model instance for the GSL template files.
Each Froglet workflow execution provided by the Froglet script, you will have to choose the model name from the list.
 By writing a new model, you have to follow the following steps.

1. Go to your models folder 
2. Create a new XML file. The file name will be displayed as a model name with the Froglet script

This is the structure when you have multiple models
```
<FROGLET_MODELS_FOLDER>
    /MyModel1.xml
    /MyModel2.xml
    /MyModel3.xml
```
# Executing a generation job

The Froglet script provides you a workflow to execute a generation job. 

Each job will require one model and one generator, where the script will provide you an interactive CLI.

```
$ froglet

Froglet usage:
(Use default config file at ~/.froglet)
$ froglet

(Use user-defined config file)
$ froglet <user_defined_config_file>

(Requried variables in the config file)
FROGLET_MODELS_FOLDER=/somwhere/mymodels
FROGLET_GENERATORS_FOLDER=/somwhere/mygenerators
FROGLET_OUTPUT_FOLDER=/somwhere/myoutput


```

