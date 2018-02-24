# hello

```bash
npm i
npm run dev
# wait compiler
# open browser at localhost:7001/app
```

快速部署

```bash
git pull && \
docker build -t stresstest.hello . && \
docker stop stresstest.hello && \
docker rm stresstest.hello && \
docker run -d -e EGG_SERVER_ENV=prod --name stresstest.hello -p 7001:7001 stresstest.hello:latest
```

进行测试

```bash
  # 查看容器使用情况
  docker stats stresstest.hello

  # 并发测试
  # 进行1000次的200并发请求。
  # 使用 siege
  siege -c 200 -r 1000 http://localhost:7001/hello
  # 使用 apachebench
  ab -c 200 -r 1000 http://localhost:7001/hello
```
