#!/bin/sh
ansible-playbook -i hosts main.yml --ask-become-pass -vvv
