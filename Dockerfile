FROM honeycombio/refinery:1.1.1@sha256:8dcccba246ef46b4bf134f90c2eb610b328a5b75ac6c0008da7a208dcb42f6ca AS refinery

FROM ubuntu:focal@sha256:4e4bc990609ed865e07afc8427c30ffdddca5153fd4e82c20d8f0783a291e241
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
