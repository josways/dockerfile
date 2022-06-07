# 基于Ubuntu镜像的jdk8镜像
FROM eclipse-temurin:8u332-b09-jre-focal
# 修改mirror 安装wget
RUN sed -i "s@http://.*archive.ubuntu.com@http://repo.huaweicloud.com@g" /etc/apt/sources.list
RUN sed -i "s@http://.*security.ubuntu.com@http://repo.huaweicloud.com@g" /etc/apt/sources.list 
RUN apt-get update && apt-get install wget -y
# 下载zFile
RUN wget https://github.com/zhaojun1998/zfile/releases/download/3.2.5/zfile-3.2.5.jar

ENTRYPOINT ["java", "-jar" ,"zfile-3.2.5.jar"]
EXPOSE 8080