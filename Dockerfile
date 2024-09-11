FROM registry.cn-hangzhou.aliyuncs.com/macroldj/kali-rolling:latest

RUN apt update && apt -y install kali-linux-large
