
set packpath [file dirname [info script]] ;
lappend auto_path $packpath ;

package require mdb ;

mdb::dbmode "memory"

mdb::setval teacher/T1/name Mary
mdb::setval teacher/T1/age  23
mdb::setval teacher/T1/subject math

mdb::setval teacher/T2/name Jack
mdb::setval teacher/T2/age  25
mdb::setval teacher/T2/subject englist

mdb::setval teacher/T3/name Tim
mdb::setval teacher/T3/age  28
mdb::setval teacher/T3/subject science

mdb::setval student/S1/name Jenny
mdb::setval student/S1/age  12

mdb::setval student/S2/name Cathy
mdb::setval student/S2/age  8

mdb::setval student/S3/name Ethan
mdb::setval student/S3/age  15

## Get Tim's age
puts "T3 age: [mdb::getval teacher/T3/age]"
puts "teach teams: [mdb::getkey teacher]"

mdb::savedb ~/mdb_demo.db ;

mdb::dbpath ~/mdb_demo.db ;
mdb::dbmode "disk"

puts "T2 name: [mdb::getval teacher/T2/name]"

