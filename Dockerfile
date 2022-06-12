# syntax = docker/dockerfile:experimental

FROM scratch

EXPOSE 8080

WORKDIR /app

ARG TARGETOS=linux
ARG TARGETARCH=amd64
ARG COMPILED_AT=1654255981911

COPY ./binary/sillyGirl_${TARGETOS}_${TARGETARCH}_${COMPILED_AT} ./sillyGirl

ENTRYPOINT [ "./sillyGirl" ]
