FROM debian:stable-slim

RUN apt-get update \
 && apt-get install -y --no-install-recommends stress \
 && rm -rf /var/lib/apt/lists/*

COPY soc-lab /usr/local/bin/soc-lab
COPY test_1.sh /usr/local/bin/test_1.sh
COPY test_2.sh /usr/local/bin/test_2.sh
COPY test_3.sh /usr/local/bin/test_3.sh

RUN chmod +x /usr/local/bin/soc-lab /usr/local/bin/test_*.sh

ENTRYPOINT ["/usr/local/bin/soc-lab"]