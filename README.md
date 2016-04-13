#Description

This repo contains an example container that executes a war file using jetty runner, rather than relying on a container
that has tomcat or jetty installed.

This puts both the jetty services and app in the developers control.
Additionally it provides a use of the entrypoint with environment control

#Usage:

## How to build

``` make build ```

## How to test

``` make test ```

#Running manually

## Parameters

- JAVA_OPTS - this is to overrid the java options passed to the app

``` docker run -t -i -e JAVA_OPTS="-Xms10m -Xmx128m" quay.io/osterzel/jetty-runner:dev ```
