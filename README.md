# Streetfood

To start your Phoenix server:

  * Run `mix setup` to install and setup dependencies
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## Other Notes

### Importing the CSV file to the Database
You can use initialize_business.sh to set up the seeding for the businesses into the repository.  Note: you will have to chmod +x in order to execute the initialize_business script.  You will, also, of course, modify the path to the csv file you're importing.

### .iex.exs to make working with the DB easier
I like to keep myself in practice with using Ecto to both query my database and to do any other sort of DB work that needs to be done.  Hence I've created a customized .iex.exs which creates a secondary, read-only connection to the DB and aliases the various schemas to enable me to easily run Ecto tasks inside iex. See more details about how to use it in the .iex.exs file itself.
