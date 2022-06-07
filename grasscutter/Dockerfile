FROM mongo:4.4.14-focal
FROM gradle:jdk17-focal
# 安装割草机运行环境
RUN sed -i "s@http://.*archive.ubuntu.com@http://repo.huaweicloud.com@g" /etc/apt/sources.list
RUN sed -i "s@http://.*security.ubuntu.com@http://repo.huaweicloud.com@g" /etc/apt/sources.list
RUN apt-get update && apt install wget -y && apt-get install mitmproxy -y

# 获取割草机源码编译并运行
RUN apt-get install git -y
# 开发分支
RUN git clone -b development https://github.com/Grasscutters/Grasscutter
# cd 后的命令要同时执行，否则找不到目录
RUN cd Grasscutter && chmod +x gradlew && ./gradlew jar
RUN cd Grasscutter && git clone https://github.com/Koko-boya/Grasscutter_Resources.git resources
RUN cd Grasscutter/resources

# 获取割草机并运行
COPY start.sh /Grasscutter/start.sh
ENTRYPOINT ["/Grasscutter/start.sh"]