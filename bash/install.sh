#!/bin/bash

# backup original config if exist
if [ -f "~/.bashrc" ]
then
    mv ~/.bashrc ~/.bashrc.bak
fi

cp bashrc ~/.bashrc