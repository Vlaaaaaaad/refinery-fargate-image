FROM honeycombio/refinery:0.16.0@sha256:c74365cb1f852cd44f783c7272db0f3a25289dba6fe34a1403c4abf65da1bef3 AS refinery

FROM ubuntu:focal@sha256:4e4bc990609ed865e07afc8427c30ffdddca5153fd4e82c20d8f0783a291e241
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
