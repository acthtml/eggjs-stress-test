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
