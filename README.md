Hello, {WHO}!

```
docker build --label "maintainer=Ross" --build-arg DOTNET_VERSION=8.0-alpine3.20-amd64 --build-arg WHO=Georgia -t rossdocker123/smart-web-app -f multistage.Dockerfile .

docker run --name smart-web-app -p 8095:8080 -d smart-web-app

docker tag smart-web-app:latest rossdocker123/web-app/smart-web-app:latest

docker push rossdocker123/smart-web-app
```


# RDP to Ubuntu
Xfce (the GUI of choice for the course)
From Windows: (over SSH) X2go (OSS client) https://wiki.x2go.org/doku.php/doc:installation:x2goclient
