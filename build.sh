docker build -t docker.m8s.io/medallia/docker-jetty-runner:$(git rev-parse HEAD | cut -c 1-12) .
