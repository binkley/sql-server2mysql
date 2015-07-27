#!/usr/bin/env bats

@test "comment out set directives" {
    run ./sql-server2mysql <"${BATS_TEST_FILENAME%.bats}.sqlserver"

    test "$output" = "$(<${BATS_TEST_FILENAME%.bats}.mysql)"
}
