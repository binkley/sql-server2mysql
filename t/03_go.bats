#!/usr/bin/env bats

@test "turn go into semicolons" {
    run ./sql-server2mysql <<EOS
do this
go
EOS
    t='do this
;'
    [ "$output" = "$t" ]
}
