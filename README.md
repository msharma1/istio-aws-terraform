# istio-aws-terraform


Troubleshooting
Error 1: terraform Error: Post "http://localhost/api/v1/namespaces/kube-system/configmaps": dial tcp [::1]:80: connect: connection refused
Resolution: The kubernetes and helm providers were missing.
