#!/bin/bash

FILE_NAME="config.yaml"
SECRET_NAME="quay-app-config"

# Base64 encode the file content
ENCODED_CONTENT=$(base64 -i $FILE_NAME)

# Create the secret YAML
cat <<EOF > $SECRET_NAME.yaml
apiVersion: v1
kind: Secret
metadata:
  name: $SECRET_NAME
type: Opaque
data:
  $(basename $FILE_NAME): $ENCODED_CONTENT
EOF

kubectl apply -f $SECRET_NAME.yaml
