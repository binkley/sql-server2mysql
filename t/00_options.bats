#!/usr/bin/env bats

@test "-h option" {
    run ./sql-server2mysql -h
    [ "$status" -eq 0 ]
    [ -n "$output" ]
}

@test "--help option" {
    run ./sql-server2mysql --help
    [ "$status" -eq 0 ]
    [ -n "$output" ]
}

@test "-v option" {
    run ./sql-server2mysql -v </dev/null
    [ "$status" -eq 0 ]
    [ -z "$output" ]
}

@test "--verbose option" {
    run ./sql-server2mysql --verbose </dev/null
    [ "$status" -eq 0 ]
    [ -z "$output" ]
}
