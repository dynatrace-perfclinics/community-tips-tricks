#!/bin/bash

# Usage
#  ./dt_backup.sh https://abc12345.live.dynatrace.com dtc01.***.***
# OR to override Monaco version:
# ./dt_backup.sh https://abc12345.live.dynatrace.com dtc01.***.*** v1.2.3

DT_URL=$1
DT_TOKEN=$2
MONACO_VERSION=v1.8.7

# Ensure at least 2 params are provided
# If not, exit
# Param 1: DT_URL (eg. https://abc12345.live.dynatrace.com)
# Param 2: DT_TOKEN (eg. dtc01.sample.secret)
if [ $# -lt 2 ]
  then
    echo "Fatal error:"
    echo "Not enough parameters passed. MUST pass at least two params."
    echo "Parameter 1 is your DT environment URL"
    echo "Parameter 2 is the DT_TOKEN"
    echo "eg. ./dt_backup.sh https://abc12345.live.dynatrace.com dtc01.***.***"
    echo "Script cannot proceed and will now exit"
    exit 1
fi

# Strip trailing slash if (and only if) it exists
DT_URL=${1%/}

# If a third param is provided, use it as MONACO_VERSION
if [ "$3" ]
  then
    MONACO_VERSION=$3
fi

# Create environments.yaml
cat << EOF >> environments.yaml
dt_backup:
    - name: "dt_backup"
    - env-url: "{{ .Env.DT_URL }}"
    - env-token-name: "DT_TOKEN"
EOF

# Download monaco

wget -O monaco https://github.com/dynatrace-oss/dynatrace-monitoring-as-code/releases/download/$MONACO_VERSION/monaco-linux-amd64
chmod +x monaco

# Run Monaco
NEW_CLI=true DT_URL=$1 DT_TOKEN=$2 ./monaco download -e environments.yaml

echo "##########################################"
echo "Backup Complete"
echo "Look for a folder called dt_backup"
echo "##########################################"