ARG CLICKHOUSE_SERVER_VERSION="23.5"
FROM clickhouse/clickhouse-server:${CLICKHOUSE_SERVER_VERSION}

COPY clickhouse-server/config.d/9999-server-config.xml /etc/clickhouse-server/config.d/9999-server-config.xml
COPY clickhouse-server/users.d/9999-profile-config.xml /etc/clickhouse-server/users.d/9999-profile-config.xml