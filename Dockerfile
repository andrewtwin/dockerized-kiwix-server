FROM alpine:3
RUN apk add --no-cache bash wget grep
VOLUME /zims
WORKDIR /
COPY ./scripts ./scripts
RUN ./scripts/provision.sh
EXPOSE 8080
ENTRYPOINT ["./scripts/entrypoint.sh"]
