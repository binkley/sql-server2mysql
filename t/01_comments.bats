#!/usr/bin/env bats


@test "comments at start of line" {
    run ./sql-server2mysql <<EOS
--No space
EOS

    [ "$output" = "-- No space" ]
}

@test "comments at end of line" {
    run ./sql-server2mysql <<EOS
  prefix --No space
EOS

   [ "$output" = "  prefix -- No space" ]
}
