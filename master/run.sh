#!/bin/bash

sed -i "s|DOCUMENT_ROOT|$DOCUMENT_ROOT|g" /etc/h2o/h2o.conf && \
sed -i "s|PHP_FPM_SOCKET_HOST|$PHP_FPM_SOCKET_HOST|g" /etc/h2o/h2o.conf && \
sed -i "s|PHP_FPM_SOCKET_PORT|$PHP_FPM_SOCKET_PORT|g" /etc/h2o/h2o.conf && \
sed -i "s|INDEX_FILE|$INDEX_FILE|g" /etc/h2o/h2o.conf && \

h2o -c /etc/h2o/h2o.conf