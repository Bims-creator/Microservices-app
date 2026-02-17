#!/bin/bash
set -e

SERVICE_NAME=$1
NAMESPACE=$2

if [ -z "$SERVICE_NAME" ] || [ -z "$NAMESPACE" ]; then
  echo "Usage: verify-deployment.sh <service-name> <namespace>"
  exit 1
fi

echo "Checking rollout status for deployment/$SERVICE_NAME in namespace $NAMESPACE..."
kubectl rollout status deployment/$SERVICE_NAME -n $NAMESPACE --timeout=120s