FROM honeycombio/refinery:1.2.1@sha256:4f1305ccf88d5313312f47c903c449ef917983b32031e99df8948d1841a1f944 AS refinery

FROM ubuntu:focal@sha256:aba80b77e27148d99c034a987e7da3a287ed455390352663418c0f2ed40417fe
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
