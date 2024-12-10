FROM clickhouse/clickhouse-server:latest

# Add SQL files to initialize the ClickHouse database
ADD ./data/*.sql /docker-entrypoint-initdb.d/

# Set the correct ownership for the SQL files
RUN chown clickhouse:clickhouse /docker-entrypoint-initdb.d/*.sql

# Expose the HTTP and native client ports
EXPOSE 8123 9000
