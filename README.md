# 鱼了个鱼

基于 [liyupi/yulegeyu](https://github.com/liyupi/yulegeyu) 仓库

## 用法

```bash
docker run -d -p 8080:80 linkaliu/docker-yulegeyu
```

Dockerfile

```dockerfile
FROM nginx:1.23.1-alpine

LABEL maintainer="AliuQ <lqadm@qq.com>"

COPY ./dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
```

## 开发

```bash
# 克隆仓库
git clone https://github.com/aliuq/yulegeyu.git
# 安装依赖
yarn install
# 打包
yarn build
# 打包镜像
docker build -t yulegeyu .
# 测试镜像
docker run --rm -p 8080:80 yulegeyu
```
