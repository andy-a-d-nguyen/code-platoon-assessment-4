#!/bin/bash

if [ -z "$KUBECONFIG" ]; then
    kubectl delete -f kubernetes/twoge.configmap.yaml--kubeconfig $KUBECONFIG --ignore-not-found
    kubectl delete -f kubernetes/twoge.secret.yaml --kubeconfig $KUBECONFIG --ignore-not-found
    kubectl delete -f kubernetes/twoge.deployment.yaml --kubeconfig $KUBECONFIG --ignore-not-found
    kubectl delete -f kubernetes/postgres.deployment.yaml --kubeconfig $KUBECONFIG --ignore-not-found
else
    kubectl delete -f kubernetes/twoge.configmap.yaml --ignore-not-found
    kubectl delete -f kubernetes/twoge.secret.yaml --ignore-not-found
    kubectl delete -f kubernetes/twoge.deployment.yaml --ignore-not-found
    kubectl delete -f kubernetes/postgres.deployment.yaml --ignore-not-found
fi
