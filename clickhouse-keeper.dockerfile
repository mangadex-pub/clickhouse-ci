ARG UPSTREAM_VERSION="24.9"
FROM clickhouse/clickhouse-keeper:${UPSTREAM_VERSION}

COPY clickhouse-keeper/config.xml /etc/clickhouse-keeper/keeper_config.xml
