FROM debian:latest

COPY --from=prometheuscommunity/json-exporter:latest /bin/json_exporter /bin/json_exporter

USER root

RUN apt-get update && apt-get install avahi-utils curl -y

EXPOSE      7979
USER        nobody
ENTRYPOINT  [ "/bin/json_exporter" ]
