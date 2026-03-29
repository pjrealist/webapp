#!/bin/bash
set -e

sudo systemctl stop httpd || true
sudo systemctl stop tomcat || true