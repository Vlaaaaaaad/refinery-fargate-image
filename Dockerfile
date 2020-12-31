FROM honeycombio/refinery:0.15.0@sha256:d37ebff5c2c1e2e21809f4f4db27d5b6e582326ea58433db6d728b63b77ad254 AS refinery

FROM ubuntu:focal@sha256:4e4bc990609ed865e07afc8427c30ffdddca5153fd4e82c20d8f0783a291e241
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
