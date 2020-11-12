FROM honeycombio/refinery:0.13.0@sha256:778121cdd8eccd40cc6799b764163127bf843ee21333d46d5cdfa30802fb95f3 AS refinery

FROM ubuntu:focal@sha256:1d7b639619bdca2d008eca2d5293e3c43ff84cbee597ff76de3b7a7de3e84956
COPY --from=refinery /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
COPY --from=refinery /usr/bin/refinery /usr/bin/refinery
