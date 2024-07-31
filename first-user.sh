#!/bin/bash

curl -X POST -k  http://localhost:5001/api/v1/user/initialize --header 'Content-Type: application/json' --data '{ "username": "admin", "password":"quaypass12345", "email": "quayadmin@example.com", "access_token": true}'
