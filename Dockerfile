FROM honeycombio/refinery:0.14.0@sha256:62939f85ce0c19c8c4dd18bc42a25b94a0adfcb19813b54d09e0054c5b2db028 AS refinery

FROM ubuntu:focal@sha256:1d7b639619bdca2d008eca2d5293e3c43ff84cbee597ff76de3b7a7de3e84956
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
