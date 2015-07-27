#!/usr/bin/env bats

@test "turn go into semicolons" {
    run ./sql-server2mysql <"${BATS_TEST_FILENAME%.bats}.sqlserver"

    test "$output" = "$(<${BATS_TEST_FILENAME%.bats}.mysql)"
}
