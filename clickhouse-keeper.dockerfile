ARG UPSTREAM_VERSION="23"
FROM clickhouse/clickhouse-keeper:${UPSTREAM_VERSION}

COPY clickhouse-server/users.d/9999-profile-config.xml /etc/clickhouse-server/users.d/9999-profile-config.xml
