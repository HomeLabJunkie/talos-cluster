#!/bin/bash

NAMESPACE="dashboards"
HELM_RELEASE="kubernetes-dashboard"

kubectl -n ${NAMESPACE} get pods >/dev/null
echo "--------------------------------------------------"
echo "Kubernetes Dashboard application:"
echo "  URL in cluster: https://${HELM_RELEASE}.${NAMESPACE}.svc"
echo '  Read Only Access token command: kubectl -n dashboards get secret kubernetes-dashboard -o jsonpath="{.data.token}" | base64 --decode ; echo'
echo "--------------------------------------------------"
