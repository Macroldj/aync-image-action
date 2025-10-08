```shell
docker run --restart=unless-stopped -d -p 8880:80 -p 8443:443 -v /home/kube/kubeconfig.yaml --privileged rancher/rancher --k8s-mode=external --kubeconfig /kubeconfig/kubeconfig.yaml
```