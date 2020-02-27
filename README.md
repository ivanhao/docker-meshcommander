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
docker run -d --name meshcommander --network=host meshcommander
```
open http://ip:16992 can show interfaces.

用法：
build镜像：
```
cd docker-meshcommander
docker build -t meshcommander:latest . 
```
运行:
```
docker run -d --name meshcommander --network=host meshcommander
```

打开http://ip:16992 可以显示界面。
