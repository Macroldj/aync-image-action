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

docker pull juicedata/csi-dashboard:v0.24.5
docker tag juicedata/csi-dashboard:v0.24.5 registry.cn-hangzhou.aliyuncs.com/macroldj/csi-dashboard:v0.24.5
docker push registry.cn-hangzhou.aliyuncs.com/macroldj/csi-dashboard:v0.24.5

docker pull juicedata/juicefs-csi-driver:v0.24.5
docker tag juicedata/juicefs-csi-driver:v0.24.5 registry.cn-hangzhou.aliyuncs.com/macroldj/juicefs-csi-driver:v0.24.5
docker push registry.cn-hangzhou.aliyuncs.com/macroldj/juicefs-csi-driver:v0.24.5

docker pull registry.k8s.io/sig-storage/csi-provisioner:v2.2.2
docker tag registry.k8s.io/sig-storage/csi-provisioner:v2.2.2 registry.cn-hangzhou.aliyuncs.com/macroldj/csi-provisioner:v2.2.2
docker push registry.cn-hangzhou.aliyuncs.com/macroldj/csi-provisioner:v2.2.2

docker pull registry.k8s.io/sig-storage/csi-resizer:v1.9.0
docker tag registry.k8s.io/sig-storage/csi-resizer:v1.9.0 registry.cn-hangzhou.aliyuncs.com/macroldj/csi-resizer:v1.9.0
docker push registry.cn-hangzhou.aliyuncs.com/macroldj/csi-resizer:v1.9.0

docker pull registry.k8s.io/sig-storage/livenessprobe:v2.11.0
docker tag registry.k8s.io/sig-storage/livenessprobe:v2.11.0 registry.cn-hangzhou.aliyuncs.com/macroldj/livenessprobe:v2.11.0
docker push registry.cn-hangzhou.aliyuncs.com/macroldj/livenessprobe:v2.11.0

docker pull registry.k8s.io/sig-storage/livenessprobe:v2.11.0
docker tag registry.k8s.io/sig-storage/livenessprobe:v2.11.0 registry.cn-hangzhou.aliyuncs.com/macroldj/livenessprobe:v2.11.0
docker push registry.cn-hangzhou.aliyuncs.com/macroldj/livenessprobe:v2.11.0

docker pull juicedata/juicefs-csi-driver:v0.24.5
docker tag juicedata/juicefs-csi-driver:v0.24.5 registry.cn-hangzhou.aliyuncs.com/macroldj/juicefs-csi-driver:v0.24.5
docker push registry.cn-hangzhou.aliyuncs.com/macroldj/juicefs-csi-driver:v0.24.5

docker pull registry.k8s.io/sig-storage/csi-node-driver-registrar:v2.9.0
docker tag registry.k8s.io/sig-storage/csi-node-driver-registrar:v2.9.0 registry.cn-hangzhou.aliyuncs.com/macroldj/csi-node-driver-registrar:v2.9.0
docker push registry.cn-hangzhou.aliyuncs.com/macroldj/csi-node-driver-registrar:v2.9.0

docker pull registry.k8s.io/sig-storage/livenessprobe:v2.11.0
docker tag registry.k8s.io/sig-storage/livenessprobe:v2.11.0 registry.cn-hangzhou.aliyuncs.com/macroldj/livenessprobe:v2.11.0
docker push registry.cn-hangzhou.aliyuncs.com/macroldj/livenessprobe:v2.11.0
