# sql-server2mysql

Simplistic approach to converting SQL Server stored procedures to MySQL.

Essentially a BASH script which converts using regular expressions (more or
less).  The purpose it to speed up human translation, not be a perfect
machine translator.

## Goals

* For a legal SQL Server stored procedure, produce a legal MySQL stored
  procedure semantically equivalent.
* Reach 90%+ fidelity in [transpiling](https://en.wikipedia.org/wiki/Source-to-source_compiler).
* Preserve line numbering and whitespace between transpilings.

## Non-goals

* Complete parsing of SQL Server and MySQL.
* 100% fidelity.

## Build and test

Use `make`.  Obvious targets:

* all - does nothing, present to satisfy least surprise
* test - runs [Bats](https://github.com/sstephenson/bats) tests

To test you must install Bats.

## What it does

* Ensures `--` comment marker is followed by a space
* Removes `[identifier]` square brackets
* Turns `GO` into semicolons
* Handles stored procedure parameter declarations
* Comments out SET directives
* Handles temporary tables
* Terminates local variable assignment
