## this stage installs everything required to build the project
FROM alpine:3.9 as build
RUN apk add alpine-sdk crystal shards zlib-dev libressl-dev upx
WORKDIR /tmp
COPY ./ip.cr /tmp
RUN \
    crystal build --progress --static ip.cr && \
    upx /tmp/ip

## this stage created final docker image
FROM busybox as release
COPY --from=build /tmp/ip /ip
USER nobody
CMD /ip
