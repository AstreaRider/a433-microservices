#!/bin/sh
# membuat variable untuk nama image, tag, dan username docker hub
image_name="karsajobs"
image_tag="latest"
username_docker_hub="10969ra"
 
# membuat docker image sesuai dengan nama variable
docker build -t "$image_name:$image_tag" .
 
# mengubah nama image agar sesuai dengan format Docker Hub
docker tag "$image_name:$image_tag" "$username_docker_hub/$image_name:$image_tag"
 
# melakukan login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u "$username_docker_hub" --password-stdin
 
# Mengunggah image ke Docker Hub
docker push "$username_docker_hub/$image_name:$image_tag"