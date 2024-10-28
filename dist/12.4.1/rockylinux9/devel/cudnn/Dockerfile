FROM fernandezr/nvidia_cuda:12.4.1-devel-rocky9 as base

FROM base as base-ppc64le

ENV NV_CUDNN_VERSION 9.0.0.312-1
ENV NV_CUDNN_PACKAGE libcudnn9-cuda-12-${NV_CUDNN_VERSION}
ENV NV_CUDNN_PACKAGE_DEV libcudnn9-devel-cuda-12-${NV_CUDNN_VERSION}

FROM base-ppc64le

ARG ppc64le

# LABEL maintainer "NVIDIA CORPORATION <sw-cuda-installer@nvidia.com>"

LABEL com.nvidia.cudnn.version="${NV_CUDNN_VERSION}"

RUN yum install -y \
    ${NV_CUDNN_PACKAGE} \
    ${NV_CUDNN_PACKAGE_DEV} \
    && yum clean all \
    && rm -rf /var/cache/yum/*