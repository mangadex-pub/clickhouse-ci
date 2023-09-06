ARG CLICKHOUSE_KEEPER_VERSION="23"
FROM clickhouse/clickhouse-keeper:${CLICKHOUSE_KEEPER_VERSION}

COPY clickhouse-server/users.d/9999-profile-config.xml /etc/clickhouse-server/users.d/9999-profile-config.xml
