# GraphQL Primer

This is a simple rails5 application that seeks to implement a GraphQL
server.

## Running tests

- Create the test database

- Apply the database migrations with,

    $RAILS_ENV=test rails db:migrate

- Run the tests by running the command,

    $ rails test

## Running the application
Start the application server, and built-in client with

    $rails s -p <your preffered port>

## Features
### Link creation
Create links with syntax like:

    mutation {
      createLink(
        description: "Lym's Twitter",
        url: "https://twitter.com/salymsash",
      ) {
        id
        url
        description
      }
    }

### Link retrieval
Retrieve links with syntax like:

    {
      allLinks {
        id
        url
        description
      }
    }
