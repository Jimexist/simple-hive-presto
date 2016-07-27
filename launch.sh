#!/bin/sh
$HIVE_HOME/bin/hiveserver2 &
$PRESTO_HOME/bin/launcher run
