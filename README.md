# sql-server2mysql

Simplistic approach to converting SQL Server stored procedures to MySQL.

## What it does

* Ensures `--` comment marker is followed by a space
* Removes `[identifier]` square brackets
* Turns `GO` into semicolons
* Handles stored procedure parameter declarations
* Comments out SET directives
* Handles temporary tables
* Terminates local variable assignment
