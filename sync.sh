# Docker login
docker login --username=15682816850 registry.cn-hangzhou.aliyuncs.com --password=${{ secrets.PASSWORD }}
# docker pull
docker pull nginx:1.28.0
# docker tag
docker tag nginx:1.28.0 registry.cn-hangzhou.aliyuncs.com/macroldj/nginx:1.28.0
# docker push
docker push registry.cn-hangzhou.aliyuncs.com/macroldj/nginx:1.28.0
