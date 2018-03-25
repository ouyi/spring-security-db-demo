# Spring Security database demo

This is a Spring Security demo application with authentication against a MySQL database.

## Prerequisites

A running MySQL instance with a test database. Create the tables and insert test data using `src/main/resources/database.sql`.

## How to start

Create `src/main/resources/application.yml` based on `src/main/resources/application.yml.template` and update the database settings.

Execute the Gradle task `bootRun` in an IDE, or run in a terminal `./gradlew bootRun`.

## How to test

Access the following URLs with a browser and compare the expected results:

`http://localhost:8090/demo/hello/all` => `Hello null!`

`http://localhost:8090/demo/hello/auth/user`
    `REDIRECT http://localhost:8090/demo/login`
        Login successful (user and pass: `user:user`): `Hello User!`
        Login failed: `http://localhost:8090/demo/login?error`

`http://localhost:8090/demo/hello/auth/admin` => `type=Forbidden, status=403`

`http://localhost:8090/demo/login` => `type=Not Found, status=404`

`http://localhost:8090/demo/hello/auth/admin` => `Hello Admin!`
