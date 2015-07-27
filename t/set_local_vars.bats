#!/usr/bin/env bats

@test "terminate local var assignments" {
    run ./sql-server2mysql <"${BATS_TEST_FILENAME%.bats}.sqlserver"

    test "$output" = "$(<${BATS_TEST_FILENAME%.bats}.mysql)"
}
