# stresstest.hello

# 安装node环境 https://github.com/mhart/alpine-node
# register:
# - daocloud http://c128de91.m.daocloud.io
# - alicloud http://registry.cn-hangzhou.aliyuncs.com
FROM mhart/alpine-node:8.9

# 创建app目录
RUN mkdir -p /usr/local/project/
COPY . /usr/local/project/
WORKDIR /usr/local/project/

# 安装依赖
RUN npm i --registry=https://registry.npm.taobao.org

# 编译
ENV EGG_SERVER_ENV=prod
# RUN npm run build

# 运行
EXPOSE 7001
CMD npm run start



