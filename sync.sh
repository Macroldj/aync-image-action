# 将文件image_list.sh中的内容复制到sync.sh中，并修改镜像名称和目标仓库地址，输出函数
for image in $(cat image_list.sh); do
  docker pull $image
  docker tag $image registry.cn-hangzhou.aliyuncs.com/macroldj/$image
  docker push registry.cn-hangzhou.aliyuncs.com/macroldj/$image
done


# 特殊的有很多层级的镜像，需要逐层推送，可以使用以下脚本：
#docker pull seafileltd/seafile-mc:11.0-latest
#docker tag seafileltd/seafile-mc:11.0-latest registry.cn-hangzhou.aliyuncs.com/macroldj/seafile-mc:11.0-latest
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/seafile-mc:11.0-latest
#
#docker pull docker.elastic.co/elasticsearch/elasticsearch:8.15.0
#docker tag docker.elastic.co/elasticsearch/elasticsearch:8.15.0 registry.cn-hangzhou.aliyuncs.com/macroldj/elasticsearch:8.15.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/elasticsearch:8.15.0

#docker pull docker.elastic.co/kibana/kibana:8.15.0
#docker tag docker.elastic.co/kibana/kibana:8.15.0 registry.cn-hangzhou.aliyuncs.com/macroldj/kibana:8.15.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/kibana:8.15.0

#docker pull docker.elastic.co/logstash/logstash:8.15.0
#docker tag docker.elastic.co/logstash/logstash:8.15.0 registry.cn-hangzhou.aliyuncs.com/macroldj/logstash:8.15.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/logstash:8.15.0

#docker pull docker.elastic.co/beats/filebeat:8.15.0
#docker tag docker.elastic.co/beats/filebeat:8.15.0 registry.cn-hangzhou.aliyuncs.com/macroldj/filebeat:8.15.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/filebeat:8.15.0

#docker pull mongodb/mongodb-community-server:latest
#docker tag mongodb/mongodb-community-server:latest registry.cn-hangzhou.aliyuncs.com/macroldj/mongodb-community-server:latest
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/mongodb-community-server:latest

#docker pull mongodb/mongodb-community-server:6.0.7-ubuntu2204
#docker tag mongodb/mongodb-community-server:6.0.7-ubuntu2204 registry.cn-hangzhou.aliyuncs.com/macroldj/mongodb-community-server:6.0.7-ubuntu2204
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/mongodb-community-server:6.0.7-ubuntu2204

#docker pull apacherocketmq/rocketmq:4.5.0
#docker tag apacherocketmq/rocketmq:4.5.0 registry.cn-hangzhou.aliyuncs.com/macroldj/rocketmq:4.5.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/rocketmq:4.5.0

#docker pull mongodb/mongodb-community-server:5.0-ubuntu2004
#docker tag mongodb/mongodb-community-server:5.0-ubuntu2004 registry.cn-hangzhou.aliyuncs.com/macroldj/mongodb-community-server:5.0-ubuntu2004
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/mongodb-community-server:5.0-ubuntu2004

#docker pull portainer/portainer:latest
#docker tag portainer/portainer:latest registry.cn-hangzhou.aliyuncs.com/macroldj/portainer:latest
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/portainer:latest

#docker pull kalilinux/kali-rolling:latest
#docker tag kalilinux/kali-rolling:latest registry.cn-hangzhou.aliyuncs.com/macroldj/kali-rolling:latest
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/kali-rolling:latest

#docker pull docker.io/flannel/flannel-cni-plugin:v1.5.1-flannel2
#docker tag docker.io/flannel/flannel-cni-plugin:v1.5.1-flannel2 registry.cn-hangzhou.aliyuncs.com/macroldj/flannel-cni-plugin:v1.5.1-flannel2
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/flannel-cni-plugin:v1.5.1-flannel2

#docker pull docker.io/flannel/flannel:v0.25.6
#docker tag docker.io/flannel/flannel:v0.25.6 registry.cn-hangzhou.aliyuncs.com/macroldj/flannel:v0.25.6
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/ubuntu:20.04

#docker pull minio/minio:latest
#docker tag minio/minio:latest registry.cn-hangzhou.aliyuncs.com/macroldj/minio:latest
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/minio:latest

#docker pull rancher/rancher-agent:v2.9.2
#docker tag rancher/rancher-agent:v2.9.2 registry.cn-hangzhou.aliyuncs.com/macroldj/rancher-agent:v2.9.2
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/rancher-agent:v2.9.2

#docker pull nacos/nacos-server:v2.4.2.1
#docker tag nacos/nacos-server:v2.4.2.1 registry.cn-hangzhou.aliyuncs.com/macroldj/nacos-server:v2.4.2.1
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/nacos-server:v2.4.2.1

#docker pull juicedata/mount:ce-v1.2.0
#docker tag juicedata/mount:ce-v1.2.0 registry.cn-hangzhou.aliyuncs.com/macroldj/mount:ce-v1.2.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/mount:ce-v1.2.0

# istio
#docker pull docker.io/istio/pilot:1.23.2
#docker tag docker.io/istio/pilot:1.23.2 registry.cn-hangzhou.aliyuncs.com/macroldj/pilot:1.23.2
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/pilot:1.23.2

#docker pull docker.io/istio/proxyv2:1.23.2
#docker tag docker.io/istio/proxyv2:1.23.2 registry.cn-hangzhou.aliyuncs.com/macroldj/proxyv2:1.23.2
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/proxyv2:1.23.2

#docker pull docker.io/istio/examples-bookinfo-productpage-v1:1.20.1
#docker tag docker.io/istio/examples-bookinfo-productpage-v1:1.20.1 registry.cn-hangzhou.aliyuncs.com/macroldj/examples-bookinfo-productpage-v1:1.20.1
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/examples-bookinfo-productpage-v1:1.20.1

#docker pull docker.io/istio/examples-bookinfo-productpage-v1:1.20.1
#docker tag docker.io/istio/examples-bookinfo-productpage-v1:1.20.1 registry.cn-hangzhou.aliyuncs.com/macroldj/examples-bookinfo-productpage-v1:1.20.1
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/examples-bookinfo-productpage-v1:1.20.1

#docker pull docker.io/istio/examples-bookinfo-reviews-v1:1.20.1
#docker tag docker.io/istio/examples-bookinfo-reviews-v1:1.20.1 registry.cn-hangzhou.aliyuncs.com/macroldj/examples-bookinfo-reviews-v1:1.20.1
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/examples-bookinfo-reviews-v1:1.20.1

#docker pull docker.io/istio/examples-bookinfo-reviews-v2:1.20.1
#docker tag docker.io/istio/examples-bookinfo-reviews-v2:1.20.1 registry.cn-hangzhou.aliyuncs.com/macroldj/examples-bookinfo-reviews-v2:1.20.1
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/examples-bookinfo-reviews-v2:1.20.1

#docker pull docker.io/istio/examples-bookinfo-reviews-v3:1.20.1
#docker tag docker.io/istio/examples-bookinfo-reviews-v3:1.20.1 registry.cn-hangzhou.aliyuncs.com/macroldj/examples-bookinfo-reviews-v3:1.20.1
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/examples-bookinfo-reviews-v3:1.20.1

#docker pull docker.io/istio/examples-bookinfo-ratings-v1:1.20.1
#docker tag docker.io/istio/examples-bookinfo-ratings-v1:1.20.1 registry.cn-hangzhou.aliyuncs.com/macroldj/examples-bookinfo-ratings-v1:1.20.1
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/examples-bookinfo-ratings-v1:1.20.1

#docker pull docker.io/istio/examples-bookinfo-details-v1:1.20.1
#docker tag docker.io/istio/examples-bookinfo-details-v1:1.20.1 registry.cn-hangzhou.aliyuncs.com/macroldj/examples-bookinfo-details-v1:1.20.1
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/examples-bookinfo-details-v1:1.20.1

#docker pull docker.io/jaegertracing/all-in-one:1.58
#docker tag docker.io/jaegertracing/all-in-one:1.58 registry.cn-hangzhou.aliyuncs.com/macroldj/all-in-one:1.58
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/all-in-one:1.58

#docker pull docker.io/grafana/grafana:11.0.0
#docker tag docker.io/grafana/grafana:11.0.0 registry.cn-hangzhou.aliyuncs.com/macroldj/grafana:11.0.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/grafana:11.0.0

#docker pull ghcr.io/prometheus-operator/prometheus-config-reloader:v0.73.2
#docker tag ghcr.io/prometheus-operator/prometheus-config-reloader:v0.73.2 registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus-config-reloader:v0.73.2
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus-config-reloader:v0.73.2

#docker pull prom/prometheus:v2.52.0
#docker tag prom/prometheus:v2.52.0 registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus:v2.52.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus:v2.52.0

#docker pull docker.io/grafana/loki:3.0.0
#docker tag docker.io/grafana/loki:3.0.0 registry.cn-hangzhou.aliyuncs.com/macroldj/loki:3.0.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/loki:3.0.0

# rancher
#docker pull rancher/rancher:v2.9.2
#docker tag rancher/rancher:v2.9.2 registry.cn-hangzhou.aliyuncs.com/macroldj/rancher:v2.9.2
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/rancher:v2.9.2

#docker pull rancher/shell:v0.2.1
#docker tag rancher/shell:v0.2.1 registry.cn-hangzhou.aliyuncs.com/macroldj/shell:v0.2.1
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/shell:v0.2.1

#docker pull rancher/rancher-webhook:v0.5.2
#docker tag rancher/rancher-webhook:v0.5.2 registry.cn-hangzhou.aliyuncs.com/macroldj/rancher-webhook:v0.5.2
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/rancher-webhook:v0.5.2

#docker pull rancher/fleet:v0.10.2
#docker tag rancher/fleet:v0.10.2 registry.cn-hangzhou.aliyuncs.com/macroldj/fleet:v0.10.2
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/fleet:v0.10.2

#docker pull rancher/mirrored-cluster-api-controller:v1.7.3
#docker tag rancher/mirrored-cluster-api-controller:v1.7.3 registry.cn-hangzhou.aliyuncs.com/macroldj/cluster-api-controller:v1.7.3
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/cluster-api-controller:v1.7.3

#docker pull rancher/fleet-agent:v0.10.2
#docker tag rancher/fleet-agent:v0.10.2 registry.cn-hangzhou.aliyuncs.com/macroldj/fleet-agent:v0.10.2
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/fleet-agent:v0.10.2

#docker pull rancher/mirrored-cluster-api-controller:v1.7.3
#docker tag rancher/mirrored-cluster-api-controller:v1.7.3 registry.cn-hangzhou.aliyuncs.com/macroldj/cluster-api-controller:v1.7.3
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/cluster-api-controller:v1.7.3

#docker pull docker.io/rancher/mirrored-ingress-nginx-kube-webhook-certgen:v20221220-controller-v1.5.1-58-g787ea74b6
#docker tag docker.io/rancher/mirrored-ingress-nginx-kube-webhook-certgen:v20221220-controller-v1.5.1-58-g787ea74b6 registry.cn-hangzhou.aliyuncs.com/macroldj/ingress-nginx-kube-webhook-certgen:v20221220-controller-v1.5.1-58-g787ea74b6
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/ingress-nginx-kube-webhook-certgen:v20221220-controller-v1.5.1-58-g787ea74b6

#docker pull docker.io/rancher/mirrored-prometheus-node-exporter:v1.7.0
#docker tag docker.io/rancher/mirrored-prometheus-node-exporter:v1.7.0 registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus-node-exporter:v1.7.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus-node-exporter:v1.7.0

#docker pull docker.io/rancher/mirrored-prometheus-operator-prometheus-operator:v0.72.0
#docker pull rancher/mirrored-kiwigrid-k8s-sidecar:1.26.1
#docker pull rancher/mirrored-prometheus-adapter-prometheus-adapter:v0.12.0

#docker tag docker.io/rancher/mirrored-prometheus-operator-prometheus-operator:v0.72.0 registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus-operator-prometheus-operator:v0.72.0
#docker tag rancher/mirrored-kiwigrid-k8s-sidecar:1.26.1 registry.cn-hangzhou.aliyuncs.com/macroldj/kiwigrid-k8s-sidecar:1.26.1
#docker tag rancher/mirrored-prometheus-adapter-prometheus-adapter:v0.12.0 registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus-adapter-prometheus-adapter:v0.12.0

#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus-operator-prometheus-operator:v0.72.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/kiwigrid-k8s-sidecar:1.26.1
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus-adapter-prometheus-adapter:v0.12.0

#docker pull docker.io/rancher/mirrored-kube-state-metrics-kube-state-metrics:v2.10.1
#docker tag docker.io/rancher/mirrored-kube-state-metrics-kube-state-metrics:v2.10.1 registry.cn-hangzhou.aliyuncs.com/macroldj/kube-state-metrics-kube-state-metrics:v2.10.1
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/kube-state-metrics-kube-state-metrics:v2.10.1

#docker pull docker.io/rancher/mirrored-prometheus-operator-prometheus-config-reloader:v0.72.0
#docker tag docker.io/rancher/mirrored-prometheus-operator-prometheus-config-reloader:v0.72.0 registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus-operator-prometheus-config-reloader:v0.72.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus-operator-prometheus-config-reloader:v0.72.0

#docker pull docker.io/rancher/mirrored-prometheus-alertmanager:v0.27.0
#docker tag docker.io/rancher/mirrored-prometheus-alertmanager:v0.27.0 registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus-alertmanager:v0.27.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus-alertmanager:v0.27.0

#docker pull docker.io/rancher/mirrored-prometheus-prometheus:v2.50.1
#docker tag docker.io/rancher/mirrored-prometheus-prometheus:v2.50.1 registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus-prometheus:v2.50.1
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/prometheus-prometheus:v2.50.1

#docker pull rancher/mirrored-library-nginx:1.24.0-alpine
#docker tag rancher/mirrored-library-nginx:1.24.0-alpine registry.cn-hangzhou.aliyuncs.com/macroldj/library-nginx:1.24.0-alpine
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/library-nginx:1.24.0-alpine

#docker pull rancher/mirrored-grafana-grafana:10.3.3
#docker tag rancher/mirrored-grafana-grafana:10.3.3 registry.cn-hangzhou.aliyuncs.com/macroldj/grafana-grafana:10.3.3
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/grafana-grafana:10.3.3

#docker pull rancher/kubectl:v1.29.2
#docker tag rancher/kubectl:v1.29.2 registry.cn-hangzhou.aliyuncs.com/macroldj/kubectl:v1.29.2
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/kubectl:v1.29.2

#docker pull rancher/mirrored-kube-logging-logging-operator:4.8.0
#docker tag rancher/mirrored-kube-logging-logging-operator:4.8.0 registry.cn-hangzhou.aliyuncs.com/macroldj/kube-logging-logging-operator:4.8.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/kube-logging-logging-operator:4.8.0

#docker pull rancher/mirrored-kube-logging-fluentd:v1.16-4.8-full
#docker tag rancher/mirrored-kube-logging-fluentd:v1.16-4.8-full registry.cn-hangzhou.aliyuncs.com/macroldj/kube-logging-fluentd:v1.16-4.8-full
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/kube-logging-fluentd:v1.16-4.8-full

#docker pull rancher/mirrored-fluent-fluent-bit:2.2.0
#docker tag rancher/mirrored-fluent-fluent-bit:2.2.0 registry.cn-hangzhou.aliyuncs.com/macroldj/fluent-fluent-bit:2.2.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/fluent-fluent-bit:2.2.0

#docker pull rancher/mirrored-jimmidyson-configmap-reload:v0.4.0
#docker tag rancher/mirrored-jimmidyson-configmap-reload:v0.4.0 registry.cn-hangzhou.aliyuncs.com/macroldj/jimmidyson-configmap-reload:v0.4.0
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/jimmidyson-configmap-reload:v0.4.0

#docker pull rancher/rancher-agent:v2.9.2
#docker tag rancher/rancher-agent:v2.9.2 registry.cn-hangzhou.aliyuncs.com/macroldj/rancher-agent:v2.9.2
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/rancher-agent:v2.9.2

#docker pull	registry.k8s.io/ingress-nginx/controller:v1.11.2
#docker tag registry.k8s.io/ingress-nginx/controller:v1.11.2 registry.cn-hangzhou.aliyuncs.com/macroldj/ingress-nginx-controller:v1.11.2
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/ingress-nginx-controllernginx-controller:v1.11.2

#docker pull registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.3
#docker tag registry.k8s.io/ingress-nginx/kube-webhook-certgen:v1.4.3 registry.cn-hangzhou.aliyuncs.com/macroldj/ingress-nginx-kube-webhook-certgen:v1.4.3
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/ingress-nginx-kube-webhook-certgen:v1.4.3


#docker pull registry.cn-hangzhou.aliyuncs.com/macroldj/node:20.18.0
#docker pull registry.cn-hangzhou.aliyuncs.com/macroldj/golang:1.22

#docker tag registry.cn-hangzhou.aliyuncs.com/macroldj/node:20.18.0 node:20.18.0
#docker tag registry.cn-hangzhou.aliyuncs.com/macroldj/golang:1.22 golang:1.22


#docker pull docker.elastic.co/elasticsearch/elasticsearch:7.17.24
#docker tag docker.elastic.co/elasticsearch/elasticsearch:7.17.24 registry.cn-hangzhou.aliyuncs.com/macroldj/elasticsearch:7.17.24
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/elasticsearch:7.17.24

#docker pull docker.elastic.co/kibana/kibana:7.17.24
#docker tag docker.elastic.co/kibana/kibana:7.17.24 registry.cn-hangzhou.aliyuncs.com/macroldj/kibana:7.17.24
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/kibana:7.17.24

#docker pull elastic/filebeat:7.17.24
#docker tag elastic/filebeat:7.17.24 registry.cn-hangzhou.aliyuncs.com/macroldj/filebeat:7.17.24
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/filebeat:7.17.24

#docker pull kibana:7.17.24
#docker tag kibana:7.17.24 registry.cn-hangzhou.aliyuncs.com/macroldj/kibana:7.17.24
#docker push registry.cn-hangzhou.aliyuncs.com/macroldj/kibana:7.17.24

docker pull aquasec/trivy:0.56.2
docker tag aquasec/trivy:0.56.2 registry.cn-hangzhou.aliyuncs.com/macroldj/trivy:0.56.2
docker push registry.cn-hangzhou.aliyuncs.com/macroldj/trivy:0.56.2
