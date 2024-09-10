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

docker pull kasmweb/kali-rolling-desktop:1.14.0
docker tag kasmweb/kali-rolling-desktop:1.14.0 registry.cn-hangzhou.aliyuncs.com/macroldj/kali-rolling-desktop:1.14.0
docker push registry.cn-hangzhou.aliyuncs.com/macroldj/kali-rolling-desktop:1.14.0