#!/bin/bash

sudo -H ansible-playbook playbooks/00_config.yaml --extra-vars "USER=$(whoami)"
