FROM ruby:latest
ARG POSTGRES_VERSION=10
ARG POSTGIS_VERSION=2.4
RUN set -eux; \
	\
	apt-get update; \
	apt-get install -y --no-install-recommends \
        postgresql-${POSTGRES_VERSION} \
        postgresql-client-${POSTGRES_VERSION} \
        postgresql-${POSTGRES_VERSION}-postgis-${POSTGIS_VERSION} \
        postgresql-${POSTGRES_VERSION}-postgis-${POSTGIS_VERSION}-scripts \
	; \
	rm -rf /var/lib/apt/lists/*;





# FROM ruby:latest AS postgis-9-6
# RUN set -eux; \
# 	\
# 	apt-get update; \
# 	apt-get install -y --no-install-recommends \
#         postgresql-9.6 \
#         postgresql-client-9.6 \
#         postgresql-9.6-postgis-2.4 \
#         postgresql-9.6-postgis-2.4-scripts \
# 	; \
# 	rm -rf /var/lib/apt/lists/*;





# FROM ruby:latest AS postgis-11
# RUN set -eux; \
# 	\
# 	apt-get update; \
# 	apt-get install -y --no-install-recommends \
#         postgresql-11 \
#         postgresql-client-11 \
#         postgresql-11-postgis-3 \
#         postgresql-11-postgis-3-scripts \
# 	; \
# 	rm -rf /var/lib/apt/lists/*;





# FROM ruby:latest AS postgis-12
# RUN set -eux; \
# 	\
# 	apt-get update; \
# 	apt-get install -y --no-install-recommends \
#         postgresql-12 \
#         postgresql-client-12 \
#         postgresql-12-postgis-3 \
#         postgresql-12-postgis-3-scripts \
# 	; \
# 	rm -rf /var/lib/apt/lists/*;
