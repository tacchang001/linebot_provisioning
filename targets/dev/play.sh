#!/bin/sh
ansible-playbook -i hosts main.yml --private-key ~/.ssh/dit --ask-become-pass -vvv
