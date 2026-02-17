#!/bin/bash
set -e

# Adjust URLs to your ingress/hostnames
STAGING_URL="https://staging.yourapp.com/health"
PROD_URL="https://yourapp.com/health"

echo "Running smoke tests..."

curl -f "$STAGING_URL" || { echo "Staging health check failed"; exit 1; }

echo "Smoke tests passed."