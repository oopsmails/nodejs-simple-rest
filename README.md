
# This is a simple nodejs restful api application to try Kubernates on local

docker build --rm -f nodejs-simple-rest/Dockerfile -t nodejs-simple-rest:v2 nodejs-simple-rest

docker tag nodejs-simple-rest:v2 oopsmails/nodejs-simple-rest:v2



docker build --rm -f nodejs-simple-rest/Dockerfile-v3-volume -t nodejs-simple-rest:v3 nodejs-simple-rest

docker tag nodejs-simple-rest:v2 oopsmails/nodejs-simple-rest:v3

--docker create -t -i -v C:/GithubStaging/nodejs-simple-rest:/nodejsapp nodejs-simple-rest:v3 /bin/bash


docker run -it --rm -v C:/GithubStaging/nodejs-simple-rest:/nodejsapp -p 2000:3000 nodejs-simple-rest:v3 /bin/bash

docker run -it --rm -v C:/dockerv/nodejs-simple-rest:/nodejsapp -p 2000:3000 nodejs-simple-rest:v3 /bin/bash

==> OK, 00
docker run -it --rm -v //c/GithubStaging/nodejs-simple-rest:/nodejsapp -p 2000:3000 nodejs-simple-rest:v3


docker run --name nodejsapp -it --rm -v //dockerv/nodejs-simple-rest:/nodejsapp -p 2000:3000 nodejs-simple-rest:v3


==> OK, 01, with Dockerfile-v3-volume.5
docker run --name nodejsapp -it --rm -v //dockerv/nodejs-simple-rest:/dockerv/nodejs-simple-rest -d -p 2000:3000 nodejs-simple-rest:v3

docker run --name nodejsapp -it --rm -v //dockerv/nodejs-simple-rest:/dockerv/nodejs-simple-rest -p 2000:3000 nodejs-simple-rest:v3


docker run --name nodejsapp --rm -it -p 2000:3000 -v "${PWD}:/usr/src/app" nodejs-simple-rest:v3

- URL:
$ minikube service nodejs-simple-rest-service --url
http://192.168.99.101:30100

http://192.168.99.101:30100/api -> working!


Also, can go Dashboard, Service, View ymal, 

```
... ...

"spec": {
"ports": [
    {
    "name": "nodejs-simple-rest-port",
    "protocol": "TCP",
    "port": 3000,
    "targetPort": 3000,
    "nodePort": 30100
    }
],
"selector": {
    "app": "nodejs-simple-rest"
},
... ...
```


======================================

https://stackoverflow.com/questions/43790807/speed-up-npm-install-in-docker-container


C:\GithubStaging\nodejs-simple-rest> docker build --rm -f Dockerfile-v3-volume -t nodejs-simple-rest:v3 .


Also, see C:\Github\general-info\201905

Temp-201908-TryKubernates.md





