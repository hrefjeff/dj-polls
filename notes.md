# 2023-11-27

I was able to get it up and running. Template was wrong. But had to run commands

## postgresql deployment container

* `k exec -it <pod name> -c <multi container name> -- /bin/bash`
* psql -U jeffwayne256
* create database polls;

Command for getting logs in real time from a container

`k logs app-5fbc5bb954-tpjfx -c django-example -f --tail 10`

# 2023-11-24

I tried spinning this environment up on another machine using this chart. Issues that happened:

* the `nginx.conf` configmap was not deployed so I had to manually do `k create cm nginx-conf --from-file=nginx.conf`
* postgres did not have a 'polls' database created. I believe the initial deployment did not spin up correctly because it should have been there with the mounted secrets

# 2023-11-23

I was able to create a django app from scratch and create k8s resources to deploy it on.

Then I used a helm chart and added the the k8s resources I've written explicitly to that chart. It pretty much just templatized the deployment.

# 2023-11-08

I'm creating a django app from scratch using their official documentation

# 2023-11-07

I failed to create a django app with persistent storage. I'm going to start from scratch tomorrow

# Docker & Docker Compose with Django

https://testdriven.io/blog/dockerizing-django-with-postgres-gunicorn-and-nginx/#docker
