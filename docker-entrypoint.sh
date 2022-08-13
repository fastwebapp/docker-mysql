#!/bin/bash

# 拡張子が .sql.gz のファイルを解凍
for f in /docker-entrypoint-initdb.d/* ; do
  case $f in
		*.sql.gz) gzip -cd $f > ${f/.gz} ;;
	esac
done

# オリジナルの entrypoint.sh を実行
/bin/sh /entrypoint.original.sh mysqld
