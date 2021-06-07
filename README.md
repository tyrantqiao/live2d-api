# live2d-api

> live2d-widget's api project
> 主要是给live2d的widget项目搭一个api的
> 基于PHP、Nginx和docker-compose搭建的项目

## 启动方式

很简单，直接git clone下来，然后直接对docker-compose文件启动即可

```bash
git clone https://github.com/tyrantqiao/live2d-api.git

cd live2d
# 启动命令
docker-compose up -d

# 停止命令
docker-compose down
```

## 排查方式

在`nginx/log`目录下有访问和错误日志，可以自行排查

喜欢的话点个赞呗
