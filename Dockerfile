FROM honeycombio/refinery:0.14.0@sha256:62939f85ce0c19c8c4dd18bc42a25b94a0adfcb19813b54d09e0054c5b2db028 AS refinery

FROM ubuntu:focal@sha256:3093096ee188f8ff4531949b8f6115af4747ec1c58858c091c8cb4579c39cc4e
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
