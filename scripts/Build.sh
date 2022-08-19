#!/bin/bash
echo "###########################"
echo "########## BUILD ##########"
echo "###########################"

docker build -t alishahrudi/django_drf:$BUILD_TAG .


