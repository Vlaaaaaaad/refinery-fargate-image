FROM honeycombio/refinery:1.0.0@sha256:df99499b37b40af9cabed68d2c3b1c76221a45ce98d5c391c98acf0c566bb511 AS refinery

FROM ubuntu:focal@sha256:4e4bc990609ed865e07afc8427c30ffdddca5153fd4e82c20d8f0783a291e241
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
