NAMESPACE="rhadp-jumpstarter"
USER=`oc whoami`

# generate jumpstarter user config
cat > /home/user/.config/jumpstarter/config.yaml <<EOF
apiVersion: jumpstarter.dev/v1alpha1
kind: UserConfig
config:
  current-client: $USER
EOF

if oc get client $USER -n $NAMESPACE &>/dev/null; then
  echo "Client $USER already exists, deleting it first..."
  oc delete client $USER -n $NAMESPACE || true
fi

# generate jumpstarter client config
jmp admin create client $USER -n $NAMESPACE --save --unsafe --insecure-tls-config --nointeractive --out /home/user/.config/jumpstarter/clients/$USER.yaml
