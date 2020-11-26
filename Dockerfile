FROM honeycombio/refinery:0.14.0@sha256:62939f85ce0c19c8c4dd18bc42a25b94a0adfcb19813b54d09e0054c5b2db028 AS refinery

FROM ubuntu:focal@sha256:4e4bc990609ed865e07afc8427c30ffdddca5153fd4e82c20d8f0783a291e241
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
