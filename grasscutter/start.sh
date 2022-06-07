#!/bin/bash
cd /Grasscutter # 进入 Grasscutter 目录
mitmdump -s proxy.py -k --set block_global=false & # 运行 mitmdump 代理
java -jar grasscutter-1.1.2-dev.jar # 运行服务器主文件