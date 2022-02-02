FROM node:slim
ENV GIT_TERMINAL_PROMPT 0

RUN apt-get update
RUN apt-get install -y git

COPY "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
