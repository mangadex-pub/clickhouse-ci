ARG UPSTREAM_VERSION="23"
FROM clickhouse/clickhouse-keeper:${UPSTREAM_VERSION}

COPY clickhouse-keeper/config.xml /etc/clickhouse-keeper/keeper_config.xml
