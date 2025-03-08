# Jenkins-Docker-Concept

## Overview
This repository explores the fundamental concepts of using **Jenkins** and **Docker** together. The goal is to understand how Jenkins automates build, test, and deployment processes using Docker containers.

## Learning Objectives
- Understand how Jenkins and Docker work together in CI/CD pipelines.
- Learn how to set up a **Jenkins server inside a Docker container**.
- Explore Jenkins pipeline integration with Docker.
- Build and deploy applications using Jenkins and Docker.

## Prerequisites
Before proceeding, ensure you have the following installed:

- **Docker** (latest version) - [Install Docker](https://docs.docker.com/get-docker/)
- **Jenkins** (running in a container or standalone) - [Jenkins Official Docs](https://www.jenkins.io/doc/)
- **Basic knowledge of CI/CD concepts**

## Project Structure
```
Jenkins-Docker-Concept/
│-- Jenkinsfile               # Pipeline definition
│-- docker-compose.yml        # Defines multi-container setup
│-- Dockerfile                # Custom Jenkins image (if needed)
│-- src/                      # Sample application source code
│-- scripts/                  # Helper scripts
│-- README.md                 # Project documentation
```

## Getting Started
### 1. Clone the Repository
```bash
git clone https://github.com/MorielMauni/Jenkins-Docker-concept.git
cd Jenkins-Docker-concept
```

### 2. Start Jenkins with Docker Compose
```bash
docker-compose up -d
```
This command starts a Jenkins container with Docker-in-Docker (DinD) support.

### 3. Access Jenkins
Once the container is running, access Jenkins by opening your browser and navigating to:
```
http://localhost:8080
```

To unlock Jenkins, retrieve the initial admin password:
```bash
docker exec -it jenkins cat /var/jenkins_home/secrets/initialAdminPassword
```

### 4. Configure Jenkins
- Install recommended plugins.
- Create a new pipeline.
- Configure the pipeline to use the `Jenkinsfile` in this repo.

### 5. Run the Pipeline
Trigger the pipeline from Jenkins UI or using:
```bash
curl -X POST http://localhost:8080/job/YourPipelineName/build --user admin:yourpassword
```

## Key Concepts
### 🛠️ Jenkins in Docker
- Jenkins runs inside a Docker container.
- Docker daemon is available inside Jenkins for running builds.

### 🏗️ Jenkins Pipeline
- Defined using a `Jenkinsfile`.
- Automates build, test, and deployment stages.

### 📦 Docker Integration
- Jenkins can build and push Docker images.
- Supports deployment to containerized environments.

## Troubleshooting
### Jenkins Container Won't Start?
- Ensure ports `8080` and `50000` are free.
- Check container logs:
  ```bash
  docker logs jenkins
  ```

### Pipeline Fails on Docker Commands?
- Ensure Jenkins has permission to access Docker.
- Check if Docker daemon is running inside Jenkins.

## Resources
- [Jenkins Documentation](https://www.jenkins.io/doc/)
- [Docker Documentation](https://docs.docker.com/)
- [CI/CD with Jenkins and Docker](https://www.jenkins.io/solutions/docker/)

## Author
[Moriel Mauni](https://www.linkedin.com/in/morielmauni/)

---
🚀 *Happy Learning & Automating!*

