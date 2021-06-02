FROM honeycombio/refinery:1.2.1@sha256:4f1305ccf88d5313312f47c903c449ef917983b32031e99df8948d1841a1f944 AS refinery

FROM ubuntu:focal@sha256:4e4bc990609ed865e07afc8427c30ffdddca5153fd4e82c20d8f0783a291e241
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
