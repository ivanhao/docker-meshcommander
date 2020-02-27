# docker-meshcommander
meshcommmander for intel amt and so on.

usage:
build image:
```
cd docker-meshcommander
docker build -t meshcommander:latest . 
```
run container:

```
docker run -d --name meshcommander -p 8080:80 meshcommander
```
open http://ip:8080 can show interfaces.

用法：
build镜像：
```
cd docker-meshcommander
docker build -t meshcommander:latest . 
```
运行:
```
docker run -d --name meshcommander -p 8080:80 meshcommander
```

打开http://ip:8080 可以显示界面。
