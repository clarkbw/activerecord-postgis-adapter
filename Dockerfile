ARG POSTGRES_VERSION=10
ARG POSTGIS_VERSION=2.5

FROM postgis/postgis:${POSTGRES_VERSION}-${POSTGIS_VERSION}

ARG POSTGRES_VERSION=10
ARG POSTGIS_VERSION=2.5
# skip installing gem documentation
RUN set -eux; \
	mkdir -p /usr/local/etc; \
	{ \
		echo 'install: --no-document'; \
		echo 'update: --no-document'; \
	} >> /usr/local/etc/gemrc

ENV LANG C.UTF-8
RUN set -eux; \
	\
	apt-get update; \
	apt-get install -y --no-install-recommends \
		postgresql-client-${POSTGRES_VERSION} \
		bison \
		dpkg-dev \
		libgdbm-dev \
		ruby \
	; \
	rm -rf /var/lib/apt/lists/*;