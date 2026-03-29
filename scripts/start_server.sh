#!/bin/bash
set -e

sudo systemctl daemon-reexec
sudo systemctl start tomcat || true
sudo systemctl enable tomcat || true

sudo systemctl start httpd
sudo systemctl enable httpd