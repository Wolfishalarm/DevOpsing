
Every docker project starts with this file:

Dockerfile

Do the build:
```
  $ bash build.sh
```

Run our docker image
```
  $ docker run -itd --name starwars -p 801:8080 ir/stt-client:latest
```

# Figure out how to run this in k8s

