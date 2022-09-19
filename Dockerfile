FROM quay.io/ansible/awx-ee:latest
MAINTAINER Systems Engineering <admin@k8s.paas>
LABEL name="awx-ee/kubernetes.core" \
      version="1.0" \
      release="1"

USER root
ADD _build /build
ADD _build/helm /usr/local/bin/
WORKDIR /build

CMD /run.sh
USER 1000
RUN git lfs install
