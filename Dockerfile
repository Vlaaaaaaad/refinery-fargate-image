FROM honeycombio/refinery:1.12.0 AS refinery

FROM ubuntu:focal-20220113
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /ko-app/refinery /usr/bin/refinery
