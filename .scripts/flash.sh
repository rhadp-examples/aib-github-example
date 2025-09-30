#!/usr/bin/env bash
set -euo pipefail

# https://rhadp-aib-cdn.s3.us-east-2.amazonaws.com/rhadp-examples/aib-github-example/autosd9-qemu-6d79ee5.aarch64.qcow2

REV=$(git rev-parse HEAD)
URL="https://rhadp-aib-cdn.s3.us-east-2.amazonaws.com/${{ values.owner }}-${{ values.component_id }}/${REV}_autosd9-qemu.qcow2"

echo "Flashing image ${URL}"
set -x
j flasher flash "${URL}"
set +x
echo "Flashed image ${URL}"