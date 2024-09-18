FROM bitnami/prometheus

USER root

RUN apt-get update && apt-get install curl -y

USER 1001