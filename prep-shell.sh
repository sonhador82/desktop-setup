#!/bin/bash

VM_NAME=UBUNTU

cat >>$HOME/.bashrc <EOF
export PS1='\[\e]0;\u@${VM_NAME}: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@${VM_NAME}\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
EOF
