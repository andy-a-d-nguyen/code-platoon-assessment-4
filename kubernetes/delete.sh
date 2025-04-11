#!/bin/bash

if [ -z "$KUBECONFIG" ]; then
    kubectl delete -f kubernetes/twoge.configmap.yaml --ignore-not-found --kubeconfig $KUBECONFIG
    kubectl delete -f kubernetes/twoge.secret.yaml --ignore-not-found --kubeconfig $KUBECONFIG
    kubectl delete -f kubernetes/twoge.deployment.yaml --ignore-not-found --kubeconfig $KUBECONFIG
    kubectl delete -f kubernetes/postgres.deployment.yaml --ignore-not-found --kubeconfig $KUBECONFIG
    kubectl delete -f kubernetes/postgres.pvc.yaml --ignore-not-found --kubeconfig $KUBECONFIG
else
    kubectl delete -f kubernetes/twoge.configmap.yaml
    kubectl delete -f kubernetes/twoge.secret.yaml
    kubectl delete -f kubernetes/twoge.deployment.yaml
    kubectl delete -f kubernetes/postgres.deployment.yaml
fi
