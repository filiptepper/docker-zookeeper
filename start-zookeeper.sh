#!/bin/bash

if [ ! -z "$ZOOKEEPER_MYID" ]; then
  DATADIR=`sed -n 's/dataDir=\(.*\)/\1/p' /opt/zookeeper/conf/zoo.cfg`
  echo "$ZOOKEEPER_MYID" > $DATADIR/myid
fi

/opt/zookeeper/bin/zkServer.sh start-foreground