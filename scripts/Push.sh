#!/bin/bash
echo "###########################"
echo "########### PUSH ##########"
echo "###########################"

docker login -u alishahrudi -p $PASS
docker push alishahrudi/django_drf:$BUILD_TAG