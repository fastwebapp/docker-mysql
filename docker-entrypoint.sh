#!/bin/bash

# 拡張子が .sql.gz のファイルを解凍
for f in /docker-entrypoint-initdb.d/*.sql.gz ; do
  gzip -cd $f > ${f/.gz}
done

# オリジナルの entrypoint.sh を実行
/bin/sh /entrypoint.original.sh mysqld
