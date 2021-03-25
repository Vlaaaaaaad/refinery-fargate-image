FROM honeycombio/refinery:1.1.0@sha256:22985bc8907f52eec8c3c0017db7a371144c29e64b1ef13cba0a974496e93848 AS refinery

FROM ubuntu:focal@sha256:4e4bc990609ed865e07afc8427c30ffdddca5153fd4e82c20d8f0783a291e241
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
