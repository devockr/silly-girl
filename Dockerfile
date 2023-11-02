# syntax = docker/dockerfile:experimental

FROM alpine

EXPOSE 8080

WORKDIR /app

ARG TARGETOS=linux
ARG TARGETARCH=amd64
ARG COMPILED_AT=1697251461836

COPY ./shim/${TARGETARCH}/lib64/* /lib64/
COPY ./binary/sillyGirl_${TARGETOS}_${TARGETARCH}_${COMPILED_AT} ./sillyGirl

ENTRYPOINT [ "./sillyGirl" ]
