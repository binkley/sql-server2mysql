#!/usr/bin/env bats

@test "handle temporary tables" {
    run ./sql-server2mysql <"${BATS_TEST_FILENAME%.bats}.sqlserver"

    test "$output" = "$(<${BATS_TEST_FILENAME%.bats}.mysql)"
}
