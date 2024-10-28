#!/bin/bash

echo 'Building Dockerfile'
docker run --rm --privileged fernandezr/qemu-register

docker build --platform ppc64le -t fernandezr/nvidia_cuda:12.4.1-base-rocky9 -f dist/12.4.1/rockylinux9/base/Dockerfile .
docker build --platform ppc64le -t fernandezr/nvidia_cuda:12.4.1-runtime-rocky9 -f dist/12.4.1/rockylinux9/runtime/Dockerfile .
docker build --platform ppc64le -t fernandezr/nvidia_cuda:12.4.1-cudnn-runtime-rocky9 -f dist/12.4.1/rockylinux9/runtime/cudnn/Dockerfile .
docker build --platform ppc64le -t fernandezr/nvidia_cuda:12.4.1-devel-rocky9 -f dist/12.4.1/rockylinux9/devel/Dockerfile .
docker build --platform ppc64le -t fernandezr/nvidia_cuda:12.4.1-cudnn-devel-rocky9 -f dist/12.4.1/rockylinux9/devel/cudnn/Dockerfile .

docker push fernandezr/nvidia_cuda:12.4.1-base-rocky9
docker push fernandezr/nvidia_cuda:12.4.1-runtime-rocky9
docker push fernandezr/nvidia_cuda:12.4.1-cudnn-runtime-rocky9
docker push fernandezr/nvidia_cuda:12.4.1-devel-rocky9
docker push fernandezr/nvidia_cuda:12.4.1-cudnn-devel-rocky9
