# sql-server2mysql

Simplistic approach to converting SQL Server stored procedures to MySQL.

## Goals

* For a legal SQL Server stored procedure, produce a legal MySQL stored
  procedure semantically equivalent.
* Reach 90%+ fidelity in [transpiling](https://en.wikipedia.org/wiki/Source-to-source_compiler).
* Preserve line numbering and whitespace between transpilings.

## What it does

* Ensures `--` comment marker is followed by a space
* Removes `[identifier]` square brackets
* Turns `GO` into semicolons
* Handles stored procedure parameter declarations
* Comments out SET directives
* Handles temporary tables
* Terminates local variable assignment
