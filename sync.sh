# 将文件image_list.sh中的内容复制到sync.sh中，并修改镜像名称和目标仓库地址，输出函数
for image in $(cat image_list.sh); do
  docker pull $image
  docker tag $image registry.cn-hangzhou.aliyuncs.com/macroldj/$image
  docker push registry.cn-hangzhou.aliyuncs.com/macroldj/$image
done


# 特殊的有很多层级的镜像，需要逐层推送，可以使用以下脚本：
docker pull