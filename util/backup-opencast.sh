#!/bin/bash

DB_PASS=$(sed -n 's/^org.opencastproject.db.jdbc.pass=//p' /etc/opencast/custom.properties)
PGPASSWORD="$DB_PASS" pg_dump -U opencast -h localhost --format=c opencast -v > "opencast-$(date +%Y-%m-%d_%H-%M-%S).dump"
