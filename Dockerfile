FROM honeycombio/refinery:1.2.1@sha256:4f1305ccf88d5313312f47c903c449ef917983b32031e99df8948d1841a1f944 AS refinery

FROM ubuntu:focal@sha256:376209074d481dca0a9cf4282710cd30a9e7ff402dea8261acdaaf57a18971dd
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
