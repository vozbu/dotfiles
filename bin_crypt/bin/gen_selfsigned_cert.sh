#!/bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./selfsigned.key -out ./selfsigned.crt
openssl dhparam -out ./dhparam.pem 2048
