#!/usr/bin/env bats

@test "strip brackets from identifiers" {
    run ./sql-server2mysql <<EOS
select [uncle].[bob]
EOS

    [ "$output" = "select uncle.bob -- l#1" ]
}
