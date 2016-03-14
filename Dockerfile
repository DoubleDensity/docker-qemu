FROM ubuntu:trusty

RUN apt-get update && apt-get install -y --no-install-recommends \
		qemu-system \
		qemu-utils \
	&& rm -rf /var/lib/apt/lists/*

EXPOSE 22
EXPOSE 5900

COPY start-qemu /usr/local/bin/
CMD ["start-qemu"]
