#!/bin/bash

sudo -H ansible-playbook playbooks/config.yaml --extra-vars "USER=$(whoami)"
