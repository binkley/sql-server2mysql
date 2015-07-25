#!/usr/bin/env bats

@test "strip brackets from identifiers" {
    fixed="$(./sql-server2mysql <<EOS
select [uncle].[bob]
EOS
)"

    [ "$fixed" = "select uncle.bob" ]
}
