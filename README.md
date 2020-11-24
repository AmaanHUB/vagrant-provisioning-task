# Vagrant Provisioning Task With A JS App

## Requirements
* Vagrant
* VirtualBox
* Git

* Make sure these are installed before doing any of this
* These can be installed from your relevant package manager

## Introduction

This should be a simple way to run an app written for Sparta Global.

## Get What You Need

* Clone the git directory with `git clone`
* Check the presence of all the files
* Run:
```
vagrant up
```

* **Congratulations, everything should be working now**


* N.B. You may need to change the permissions on the `provision.sh` file to make it executable
```
chmod +x environment/provision.sh
```

## Check

* Check if the webpage exists
* In your browser, type in `testing.local:3000`
* And for an index of a fibonacci sequence, try `testing.local:3000/fibonacci/<index>` where `<index>` is an integer

