#!/bin/bash

sudo apt-get install -y python-pip pigz

export LC_ALL=C
sudo pip install awscli

# aws configure

# 创建一个用户 https://console.aws.amazon.com/iam/home 获取 key id 和 secret key