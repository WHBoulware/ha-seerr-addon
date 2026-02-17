ARG BUILD_FROM
FROM $BUILD_FROM

ENV CONFIG_DIRECTORY=/data

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD [ "/run.sh" ]
