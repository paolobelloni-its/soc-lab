FROM debian:stable-slim

ENV TERM=xterm-256color

RUN apt-get update \
 && apt-get install -y --no-install-recommends stress ca-certificates \
 && rm -rf /var/lib/apt/lists/*

COPY lab-launcher /usr/local/bin/lab-launcher
COPY test_1.sh /usr/local/bin/test_1.sh
COPY test_2.sh /usr/local/bin/test_2.sh
COPY test_3.sh /usr/local/bin/test_3.sh

RUN chmod +x /usr/local/bin/lab-launcher /usr/local/bin/test_*.sh

ENTRYPOINT ["/usr/local/bin/lab-launcher"]