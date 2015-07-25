#!/usr/bin/env bats

@test "-h option" {
    help="$(./sql-server2mysql -h)"
    [ -n "$help" ]
}

@test "--help option" {
    help="$(./sql-server2mysql --help)"
    [ -n "$help" ]
}

@test "-v option" {
    ./sql-server2mysql -v </dev/null
}

@test "--verbose option" {
    ./sql-server2mysql --verbose </dev/null
}
