#!/bin/sh

CRON=${CRON:-"0 1 * * *"}
ES_HOST=${ES_HOST:-"elasticsearch"}

echo "$CRON /usr/bin/curator  --config ${CONFIG_FILE} --dry-run ${COMMAND}" >>/etc/crontabs/root
echo "$CRON /usr/bin/curator  --config ${CONFIG_FILE} --dry-run ${COMMAND}" >>/tmp/crontab.6T22cM/crontab

crond -f -l 8
