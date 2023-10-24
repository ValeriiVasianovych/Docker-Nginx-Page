# Running Frontend Application Using Docker

This repository contains a Dockerfile example and instructions for running your frontend application in a container using Nginx.

## Running Instructions

1. **Install Docker**: Ensure that Docker is installed on your computer. If it's not installed, you can follow the official Docker documentation for installation: [Install Docker](https://docs.docker.com/get-docker/).

2. **Clone this repository**:
    git clone https://github.com/your_repository.git

3. **Navigate to the project directory**:
    cd directory_with_repository

4. **Build the Docker image** using the provided Dockerfile:
    docker build -t my-frontend-app .

5. **Run the Docker container**:
    docker run -p 80:80 my-frontend-app
	
6. **Verify the functionality** by opening a web browser and navigating to [http://localhost:80](http://localhost:80).

You have now successfully set up and run your frontend application in a Docker container using Nginx.
