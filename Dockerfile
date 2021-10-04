FROM honeycombio/refinery:v1.5.0@sha256:a8af78b09d9f0fb74e05c6fba42451f42cba6c60b3ef8d6b9316808be52bf568 AS refinery

FROM ubuntu:focal@sha256:376209074d481dca0a9cf4282710cd30a9e7ff402dea8261acdaaf57a18971dd
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
