#!/bin/bash

if [ ! -d $HOME/.fonts ];then
    mkdir $HOME/.fonts
fi

cp terminus-ttf-4.47.0/* $HOME/.fonts

fc-cache -r

