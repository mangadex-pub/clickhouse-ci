ARG CLICKHOUSE_VERSION="23.5"
FROM clickhouse/clickhouse-server:${CLICKHOUSE_VERSION}

# Install envsubst (in gettext package)
USER root
RUN apt -qq update && \
    apt -qq -y full-upgrade && \
    apt -qq -y install --no-install-recommends gettext && \
    apt -qq -y --purge autoremove && \
    apt -qq -y clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /var/cache/* /var/log/*

COPY config.d/9999-server-config.xml /etc/clickhouse-server/config.d/9999-server-config.xml
COPY users.d/9999-profile-config.xml /etc/clickhouse-server/users.d/9999-profile-config.xml
