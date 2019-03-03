# Troubleshooting

*ActiveRecord::StatementInvalid*

  * Full error:
    ```ruby
    ActiveRecord::StatementInvalid: PG::InsufficientPrivilege:
        ERROR:  permission denied to create database
    ```

  * Cause:

      * The rails Postgres user does not have the correct attributes in the database.

  * Solution:

      * Log in to Postgres
    ```bash
    psql
    ```

      * If when logging into Postgres you receive the error:
    ```bash
    psql: FATAL:  database "<user>" does not exist
    ```

      * Then login with:
    ```bash
    psql -d template1
    ```

      * Once logged in you can access a list of user roles with `\du`
    ```sql
    \du
    ```

      * This will display a table with the following columns:
    ```
                             List of roles
 Role name      |              Attributes                   | Member of
----------------+-------------------------------------------+-----------
 user_name      |                                           | {}
    ```

      * This is stating that the user `user_name` does not have any roles specified.

      * Add the Create DB attribute
    ```sql
    ALTER USER user_name CREATEDB;
    ```

      * Add the Superuser attribute
    ```sql
    ALTER ROLE user_name WITH SUPERUSER;
    ```

      * Add a password
    ```sql
    ALTER USER user_name WITH PASSWORD 'hu8jmn3';
    ```

      * Change the expiration date of the user's password
    ```sql
    ALTER USER manuel VALID UNTIL 'Jan 31 2030'; # or set date to 'infinity' to last forever.
    ```

      * Check access roles again with `\du` and then quit Postgres
    ```sql
    \q
    ```

  * Reference Links:
    * Alter user [https://www.postgresql.org/docs/8.0/sql-alteruser.html](https://www.postgresql.org/docs/8.0/sql-alteruser.html)

    * create user [https://www.postgresql.org/docs/8.0/app-createuser.html](https://www.postgresql.org/docs/8.0/app-createuser.html)
