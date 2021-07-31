ARG BASE_IMAGE="ubuntu:20.04"
FROM $BASE_IMAGE

RUN mkdir -p /workspace
COPY ./ /workspace
# setup env
RUN bash -c "apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata"
RUN bash -c "apt-get install -y build-essential cmake git git wget curl vim"
RUN bash -c "source workspace/install_minio.sh"
WORKDIR /workspace
CMD /workspace/build_all.sh