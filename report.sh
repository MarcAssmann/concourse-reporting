#!/bin/bash

curl -O fly http://192.168.100.4:8080/api/v1/cli?arch=amd64&platform=linux
chmod +x fly

fly -t lite login -c http://192.168.100.4:8080

fly -t lite pipelines

fly -t lite builds

