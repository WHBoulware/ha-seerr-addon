ARG BUILD_FROM
FROM $BUILD_FROM

USER root

ENV CONFIG_DIRECTORY=/data

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
