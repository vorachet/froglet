# Froglet - Lightweight textual artifact generation environment

Latest version 0.2


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
3. Each program run, ```froglet``` asks user to select one template file (.gsl) and one model file (.xml) from the list


# Installation 

```froglet``` can be installed using ```brew``` at this time and tested on MacOS.

Install Froglet 

```
brew tab vorachet/froglet
brew install froglet
```

Update Froglet 

```
brew reinstall froglet
```

Uninstall Froglet 

```
brew remove froglet
```

# Usage example

```

$ git clone https://github.com/vorachet/froglet-examples
$ cd froglet-examples
$ cd graphml
$ froglet


  FROGLET_MODELS_FOLDER = <MyProject>/froglet-examples/graphml/models
  FROGLET_GENERATORS_FOLDER = <MyProject>/froglet-examples/graphml/generators
  FROGLET_OUTPUT_FOLDER = <MyProject>/froglet-examples/graphml/output

✔  Found GSL at /usr/local/bin/gsl
✔  Found Generator Index File at <MyProject>/froglet-examples/graphml/generators/index.gsl

Choose generator:
1) graph.gsl
2) index.gsl
#? 2

Choose model:
1) graphml_model1.xml
#? 1




✔  Target Generator <MyProject>/froglet-examples/graphml/generators/index.gsl
✔  Target Model <MyProject>/froglet-examples/graphml/models/graphml_model1.xml
✔  Target Output Folder <MyProject>/froglet-examples/graphml/output


Generating...

gsl/4 M: Generated <MyProject>/froglet-examples/graphml/output/graphml_model1.dot

✔  Done

Enjoy using Froglet! 

```