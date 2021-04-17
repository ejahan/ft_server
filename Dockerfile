FROM debian:buster-slim

RUN 

COPY ./srcs/ ./

EXPOSE 80

ENTRYPOINT ["bash", "jsaispas.sh"] == CMD?

