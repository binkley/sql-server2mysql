#!/usr/bin/env bats


@test "comments at start of line" {
    fixed="$(./sql-server2mysql <<EOS
--No space
EOS
)"

    [ "$fixed" = "-- No space" ]
}

@test "comments at end of line" {
    fixed="$(./sql-server2mysql <<EOS
  prefix --No space
EOS
)"

   test "$fixed" = "  prefix -- No space"
}
