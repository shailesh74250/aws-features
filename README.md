# Docker-Commands
  # Basic-Commands
  - docker --version   (Check Docker version)
  - docker info     (Display system-wide information)
  - docker help      (Show help for Docker commands)

  # Managing Docker Images
  - docker images  (List all local images)
  - docker search <image_name>   (Search for an image on Docker Hub)
  - docker pull <image_name>    (Download an image from Docker Hub)
  - docker rmi <image_id>      (Remove an image)
  - docker image prune    (Remove unused images)

  # Managing Docker Containers
  - docker ps    (Show running containers)docker start <container_id>
  - docker ps -a      (Show all containers (including stopped ones))
  - docker run -d -p 8080:80 <image>      (Run a container in detached mode (background))
  - docker run --name my_container <image>    (Run a container with a custom name)
  - docker stop <container_id>      (Stop a running container)
  - docker start <container_id>    (Start a stopped container)
  - docker restart <container_id>    (Restart a container)
  - docker rm <container_id>    (Remove a stopped container)
  - docker container prune    (Remove all stopped containers)

  # Inspecting Containers
  - docker inspect <container_id>      (Show detailed information about a container)
  - docker logs <container_id>        (View logs of a running container)
  - docker stats                (Show real-time resource usage of containers)
  - docker top <container_id>      (Show real-time resource usage of containers)

  # Working with Docker Networks
  - docker network ls        (List all Docker networks)
  - docker network create my_network        (Create a custom network)
  - docker network inspect my_network      (Get details of a network)
  - docker network connect my_network <container>      (Connect a container to a network)
  - docker network disconnect my_network <container>      (Disconnect a container from a network)

  # Working with Volumes (Persistent Storage)
  - docker volume ls        (List all volumes)
  - docker volume create my_volume     (Create a volume)
  - docker volume inspect my_volume    (Inspect a volume)
  - docker volume rm my_volume        (Remove a volume)
  - docker volume prune          (Remove all unused volumes)

  # Docker Compose (Multi-Container Applications)
  - docker-compose up -d    (Start services in detached mode)
  - docker-compose down      (Stop and remove all containers)
  - docker-compose ps        (List running services)
  - docker-compose logs      (View logs of all services)

  # Building & Managing Images
  - docker build -t my_image .        (Build an image from a Dockerfile)
  - docker tag my_image my_repo/my_image:v1      (Tag an image for a repository)
  - docker push my_repo/my_image:v1      (Push an image to Docker Hub)
  - docker history <image_id>    (Show history of an image)
  - docker save -o my_image.tar my_image    (Save an image as a tar file)
  - docker load -i my_image.tar    (Load an image from a tar file)


  #  Cleaning Up Docker
  - docker system prune    (Remove unused containers, images, and networks)
  - docker container prune    (Remove all stopped containers)
  - docker image prune     (Remove all unused images)
  - docker network prune      (Remove all unused networks)
  - docker volume prune    (Remove all unused volumes)

  # Run an Interactive Shell in a Running Container
  - docker exec -it <container_id> bash     (This lets you enter a running container and execute commands inside it.)
