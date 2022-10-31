#!/bin/bash

./kubectl apply -f deploy/aws-secret.yaml 
./kubectl apply -f deploy/env-secret.yaml 
./kubectl apply -f deploy/env-configmap.yaml

./kubectl apply -f deploy/backend-feed-deployment.yaml
./kubectl apply -f deploy/backend-user-deployment.yaml
./kubectl apply -f deploy/reverseproxy-deployment.yaml
./kubectl apply -f deploy/frontend-deployment.yaml

./kubectl apply -f deploy/backend-feed-service.yaml 
./kubectl apply -f deploy/backend-user-service.yaml
./kubectl apply -f deploy/reverseproxy-service.yaml
./kubectl apply -f deploy/frontend-service.yaml