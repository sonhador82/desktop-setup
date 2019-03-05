#!/bin/bash

ansible-playbook -K -b -c local -i 127.0.0.1, ./setup.yml
