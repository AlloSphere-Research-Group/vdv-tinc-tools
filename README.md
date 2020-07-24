# tinc-template
Template for creating applications using tinc and allolib.

Developed by:

AlloSphere Research Group

University of California, Santa Barbara

# Installation

## Dependencies

terminal to run bash

git

cmake version 3.0 or higher

## How to install
On a bash shell:

    git clone https://github.com/AlloSphere-Research-Group/allotemplate.git <project folder name>
    cd <project folder name>

    ./init.sh

Now the folder is no longer a git repository.

You can convert the folder into a git repository of your choice with the following commands. (Example is using a github repository)

    git init
    git remote add origin git@github.com:username/new_repo

Initialize and pull the tinc submodule, and build the dependencies.

    git submodule update --recursive --init
    cd tinc
    ./build_deps.sh

After the initial commit, set the upstream with the following command.

    git push -u origin master

## How to compile / run
src folder contains the initial test code you can replace.

Edit CMakeLists.txt and run.sh to match your code.

On a bash shell:

    ./configure.sh

This will execute cmake on the project

    ./run.sh

This will compile the project, and run the binary if compilation is successful.

## How to perform a distclean
If you need to delete the distribution,

    ./distclean.sh

should recursively clean all the build directories of the project including those of allolib and its submodules.
