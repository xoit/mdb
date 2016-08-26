# mdb

## mdb::dbpath

set database path on the disk.

If dbmode is set to disk, when set or get, always load db from disk.

## mdb::dbmode

set db mode, choose one of "disk" and "memory".

## mdb::getval

get value of specified key chain.

The key chain format is first/second/third

## mdb::setval

set value of specified key chain.

## mdb::getkey

get the key of specified key chain.

## mdb::loadb

load db from disk, by default $mdb::dbpath will be used.

## mdb::savedb

save db to disk, by default $mdb::dbpath will be used.

