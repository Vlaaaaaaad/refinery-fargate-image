FROM honeycombio/refinery:1.2.0@sha256:22abd05d9c41db200e9fe1db62891f50b9aad384c9eacdcc66cfa921f5e3a8ed AS refinery

FROM ubuntu:focal@sha256:4e4bc990609ed865e07afc8427c30ffdddca5153fd4e82c20d8f0783a291e241
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
