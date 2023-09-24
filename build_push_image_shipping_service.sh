#!/bin/sh
# membuat variable untuk nama image, tag, dan username Github Container Registry
container_registry="ghcr.io"
username="astrearider"
repository="shipping-service"
tag="latest"
 
# membuat docker image sesuai dengan nama variable
docker build -t "$repository:$tag" .
 
# mengubah nama image agar sesuai dengan format Github Container Registry
docker tag "$repository:$tag" "$container_registry/$username/$repository:$tag"
 
# melakukan login ke Github Container Registry
echo $CR_PAT | docker login "$container_registry" -u "$username" --password-stdin
 
# Mengunggah image ke Github Container Registry
docker push "$container_registry/$username/$repository:$tag"