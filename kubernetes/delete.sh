#!/bin/bash

if [ -z "$KUBECONFIG" ]; then
    kubectl delete -f kubernetes/twoge.configmap.yaml --kubeconfig $KUBECONFIG
    kubectl delete -f kubernetes/twoge.secret.yaml --kubeconfig $KUBECONFIG
    kubectl delete -f kubernetes/twoge.deployment.yaml --kubeconfig $KUBECONFIG
    kubectl delete -f kubernetes/postgres.deployment.yaml --kubeconfig $KUBECONFIG
    kubectl delete -f kubernetes/postgres.pvc.yaml --kubeconfig $KUBECONFIG
else
    kubectl delete -f kubernetes/twoge.configmap.yaml
    kubectl delete -f kubernetes/twoge.secret.yaml
    kubectl delete -f kubernetes/twoge.deployment.yaml
    kubectl delete -f kubernetes/postgres.deployment.yaml
fi
