# Froglet - Lightweight textual artifact generation environment

Latest version 0.4


```froglet``` is a command line program that provides an interactive workflow for GSL. GSL is a command line program developed by Matrix and designed to construct textual artfacts. Note that you will have to install ```gsl``` on your computer before using ```froglet```. You can learn more about GSL https://github.com/imatix/gsl 

The advantage of Froglet

```froglet``` provides an incremental way to develop GSL templates and models. The target construct can be developed gradually. GSL templates can be written in strategies. For examples, independent generation task per template file or complex generation task that use multiple template files. Using the interactive CLI of ```froglet``` will allow user to run generation tasks with flexibility.  ```froglet``` uses the advantages of ```gsl``` which is fast and small, so  ```froglet``` is a lightweight textual artifact generation environment  

# Usage Design 

1. Only work with the following directory structure. 
```
├── <UserProject>
│   ├── templates/*.gsl   # GSL template files
│   ├── models/*.xml      # GSL XML-based model files
```
2. Run ```froglet``` at the root of ```<UserProject>``` directory
3. Each program run, ```froglet``` asks user to select one template file (.gsl) and one model file (.xml) from an interactive list


# Installation 

```froglet``` can be installed using ```brew``` at this time and tested on MacOS.

Install Froglet 

```
brew tab vorachet/froglet
brew install froglet
```

Upgrade Froglet to the latest version

```
brew upgrade froglet
```

Uninstall Froglet 

```
brew remove froglet
```

# Usage example

More examples on https://github.com/vorachet/froglet-examples

```
$ git clone https://github.com/vorachet/froglet-examples
$ cd froglet-examples
$ cd graphml2dot
$ froglet 

  FROGLET_MODELS_FOLDER = /Users/vorachet/Desktop/froglet-examples/graphml2dot/models
  FROGLET_TEMPLATES_FOLDER = /Users/vorachet/Desktop/froglet-examples/graphml2dot/templates
  FROGLET_OUTPUT_FOLDER = /Users/vorachet/Desktop/froglet-examples/graphml2dot/output

✔ Found GSL at /usr/local/bin/gsl
✔ Found templates directory at 
✔ Found models directory at /Users/vorachet/Desktop/froglet-examples/graphml2dot/models

Choose generator:
1) graphml2dot.gsl
#? 1

Choose model:
1) graphml_10_nodes.xml
2) graphml_2_nodes.xml
#? 2

✔  Target Generator /Users/vorachet/Desktop/froglet-examples/graphml2dot/templates/graphml2dot.gsl
✔  Target Model /Users/vorachet/Desktop/froglet-examples/graphml2dot/models/graphml_2_nodes.xml
✔  Target Output Folder /Users/vorachet/Desktop/froglet-examples/graphml2dot/output

Generating...

gsl/4 M: Generated /Users/vorachet/Desktop/froglet-examples/graphml2dot/output/graphml_2_nodes.dot

✔  Done

Enjoy using Froglet v0.4!

```