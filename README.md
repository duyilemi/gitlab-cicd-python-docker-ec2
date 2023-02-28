# Python Flask - Demo Web Application

This is a simple Python Flask web application. The app provides system information and a realtime monitoring screen with dials showing CPU, memory, IO and process information.

The app has been designed with cloud native demos & containers in mind, in order to provide a real working application for deployment, something more than "hello-world" but with the minimum of pre-reqs. It is not intended as a complete example of a fully functioning architecture or complex software design.

Typical uses would be deployment to Kubernetes, demos of Docker, CI/CD (build pipelines are provided), deployment to cloud (Azure) monitoring, auto-scaling

# Status

![](https://img.shields.io/github/last-commit/duyilemi/gitlab-cicd-python-docker-ec2) ![](https://img.shields.io/github/release-date/duyilemi/gitlab-cicd-python-docker-ec2) ![](https://img.shields.io/github/v/release/duyilemi/gitlab-cicd-python-docker-ec2) ![](https://img.shields.io/github/commit-activity/y/duyilemi/gitlab-cicd-python-docker-ec2)

Live instances:

[![](https://img.shields.io/website?label=Hosted%3A%20Azure%20App%20Service&up_message=online&url=https%3A%2F%2Fpython-demoapp.azurewebsites.net%2F)](https://python-demoapp.azurewebsites.net/)  
[![](https://img.shields.io/website?label=Hosted%3A%20Kubernetes&up_message=online&url=https%3A%2F%2Fpython-demoapp.kube.benco.io%2F)](https://python-demoapp.kube.benco.io/)

## Building & Running Locally

### Pre-reqs

- Be using Linux, WSL or MacOS, with bash, make etc
- [Python 3.8+](https://www.python.org/downloads/) - for running locally, linting, running tests etc
- [Docker](https://docs.docker.com/get-docker/) - for running as a container, or image build and push
- [AWS](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-linux) - for deployment to AWs EC2

Clone the project to any directory where you do development work

```
git clone https://github.com/duyilemi/gitlab-cicd-python-docker-ec2
```

### Makefile

A standard GNU Make file is provided to help with running and building locally.

```text
help                 💬 This help message
lint                 🔎 Lint & format, will not fix but sets exit code on error
lint-fix             📜 Lint & format, will try to fix errors and modify code
image                🔨 Build container image from Dockerfile
push                 📤 Push container image to registry
run                  🏃 Run the server locally using Python & Flask
deploy               🚀 Deploy to Azure Web App
undeploy             💀 Remove from Azure
test                 🎯 Unit tests for Flask app
test-report          🎯 Unit tests for Flask app (with report output)
test-api             🚦 Run integration API tests, server must be running
clean                🧹 Clean up project
```

The app runs under Flask and listens on port 3000 by default, this can be changed with the `PORT` environmental variable.

# Containers

Run in a container with:

```bash
docker run --rm -it -p 3000:3000 charlied0cker/python-cicd-demo:latest
```

Should you want to build your own container, use `make image` and the above variables to customise the name & tag.

## Kubernetes

The app can easily be deployed to Kubernetes using Helm

# GitHub Actions CI/CD

A working set of CI and CD release GitHub Actions workflows are provided `.github/workflows/`, automated builds are run in GitHub hosted runners

### [GitHub Actions](https://github.com/duyilemi/gitlab-cicd-python-docker-ec2/actions)

[![](https://img.shields.io/github/workflow/status/duyilemi/gitlab-cicd-python-docker-ec2/CI%20Build%20App)](https://github.com/duyilemi/gitlab-cicd-python-docker-ec2/actions?query=workflow%3A%22CI+Build+App%22)

[![](https://img.shields.io/github/workflow/status/duyilemi/gitlab-cicd-python-docker-ec2/CD%20Release%20-%20AKS?label=release-kubernetes)](https://github.com/duyilemi/gitlab-cicd-python-docker-ec2/actions?query=workflow%3A%22CD+Release+-+AKS%22)

[![](https://img.shields.io/github/workflow/status/duyilemi/gitlab-cicd-python-docker-ec2/CD%20Release%20-%20Webapp?label=release-azure)](https://github.com/duyilemi/gitlab-cicd-python-docker-ec2/actions?query=workflow%3A%22CD+Release+-+Webapp%22)

[![](https://img.shields.io/github.com/duyilemi/gitlab-cicd-python-docker-ec2)](https://github.com/duyilemi/gitlab-cicd-python-docker-ec2/commits/master)
