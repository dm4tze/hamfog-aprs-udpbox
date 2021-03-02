FROM registry.hamfog.net:5000/dm4tze/aprs-dxlaprs AS build-env

FROM alpine as aprs-udpbox

COPY --from=build-env /udpbox /
COPY ./content /

ENTRYPOINT /start.sh