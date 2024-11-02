# show build version
docker buildx version

# enable build instancd
docker buildx create --name mybuilder --use

# Create the builder
docker buildx build  --builder multi-builder --platform linux/arm64  -t gabeenkim/cloud-cicd --push .
docker buildx build  --platform linux/arm64  -t gabeenkim/cloud-cicd --push .

# docker image ls (빌드한 이미지를 로컬에 가지고 있음)