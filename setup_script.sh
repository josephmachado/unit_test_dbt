#!/bin/bash
docker run --name pg -p 5432:5432 -e POSTGRES_USER=sde -e POSTGRES_PASSWORD=password -e POSTGRES_DB=prodWarehouse -d postgres:12.2
docker run --name pgdev -p 5433:5432 -e POSTGRES_USER=sde -e POSTGRES_PASSWORD=password -e POSTGRES_DB=devWarehouse -d postgres:12.2
sleep 10
psql -h localhost -d devWarehouse -U sde -p 5433 -f ./setup/create_base_table.sql
psql -h localhost -d prodWarehouse -U sde -p 5432 -f ./setup/create_base_table.sql
psql -h localhost -d prodWarehouse -U sde -p 5432 -f ./setup/insert_data_prod.sql
