FROM honeycombio/refinery:1.4.1@sha256:faea3ca4c374736b39522d67c62b254ef8953f5aa9492be7c7abbb10b4095dbc AS refinery

FROM ubuntu:focal@sha256:376209074d481dca0a9cf4282710cd30a9e7ff402dea8261acdaaf57a18971dd
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
