FROM bitnami/prometheus

USER root
# RUN commands

RUN apt-get update && apt-get install avahi-utils -y

USER 1001
