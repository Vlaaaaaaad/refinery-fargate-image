FROM honeycombio/refinery:1.8.0 AS refinery

FROM ubuntu:focal-20211006
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /ko-app/refinery /usr/bin/refinery
