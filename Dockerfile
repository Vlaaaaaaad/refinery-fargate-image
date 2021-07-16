FROM honeycombio/refinery:1.4.0@sha256:72a428319164e349951e66d5645b9890ccd37b6fc21d5ebcaa6e44221eddfb94 AS refinery

FROM ubuntu:focal@sha256:376209074d481dca0a9cf4282710cd30a9e7ff402dea8261acdaaf57a18971dd
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
