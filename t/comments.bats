#!/usr/bin/env bats

@test "comments at start of line" {
    run ./sql-server2mysql <<EOS
--No space
EOS

    [ "$output" = "-- No space -- l#1" ]
}

@test "comments at end of line" {
    run ./sql-server2mysql <<EOS
  prefix --No space
EOS

   [ "$output" = "  prefix -- No space -- l#1" ]
}
