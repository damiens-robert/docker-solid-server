FROM node:13.0.1-stretch

ARG SRC_DIR

EXPOSE 443

RUN npm install -g solid-server

VOLUME ["/site"]

COPY --chown=root:root ./${SRC_DIR}/entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
