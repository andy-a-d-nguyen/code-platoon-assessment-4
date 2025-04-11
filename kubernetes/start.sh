#!/bin/bash

if [ -z "$KUBECONFIG" ]; then
    kubectl apply -f kubernetes/twoge.configmap.yaml --kubeconfig $KUBECONFIG
    kubectl apply -f kubernetes/twoge.secret.yaml --kubeconfig $KUBECONFIG
    kubectl apply -f kubernetes/postgres.deployment.yaml --kubeconfig $KUBECONFIG
    kubectl apply -f kubernetes/twoge.deployment.yaml --kubeconfig $KUBECONFIG
else
    kubectl apply -f kubernetes/twoge.configmap.yaml
    kubectl apply -f kubernetes/twoge.secret.yaml
    kubectl apply -f kubernetes/postgres.deployment.yaml
    kubectl apply -f kubernetes/twoge.deployment.yaml
fi
