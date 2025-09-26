USER=`oc whoami`

# generate jumpstarter user config
cat > /home/user/.config/jumpstarter/config.yaml <<EOF
apiVersion: jumpstarter.dev/v1alpha1
kind: UserConfig
config:
  current-client: $USER
EOF

# generate jumpstarter client config
jmp admin create client $USER -n rhadp-jumpstarter --save --unsafe --insecure-tls-config --nointeractive --out /home/user/.config/jumpstarter/clients/$USER.yaml
