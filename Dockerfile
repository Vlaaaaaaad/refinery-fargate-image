FROM honeycombio/refinery:1.3.0@sha256:edb2e461d92e4ab600d8801fe8673aea6d24efcccabaee147595d3d37c409d2a AS refinery

FROM ubuntu:focal@sha256:376209074d481dca0a9cf4282710cd30a9e7ff402dea8261acdaaf57a18971dd
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
