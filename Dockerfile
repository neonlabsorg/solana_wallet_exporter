FROM quay.io/prometheus/busybox:latest
LABEL maintainer="Bartol Deak <b@bdeak.net>"

COPY solana_wallet_exporter /bin/solana_wallet_exporter

USER nobody
EXPOSE 9357
ENTRYPOINT [ "/bin/solana_wallet_exporter" ]
