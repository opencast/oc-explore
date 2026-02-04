#!/bin/bash

DB_PASS=$(sed -n '/^\[db\]/,/^\[/ s/^password *= *"\(.*\)"/\1/p' /opt/tobira/config.toml)
PGPASSWORD="$DB_PASS" pg_dump -U tobira -h localhost --format=c tobira -v > "tobira-$(date +%Y-%m-%d_%H-%M-%S).dump"
