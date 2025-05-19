## Getting Started

### 1. Install Elixir and Phoenix
Phoenix is a web application framework written in Elixir, and we'll write our application code in Elixir as well. So the first thing you need to do is install Elixir [https://elixir-lang.org/](https://elixir-lang.org/)

Up-to-date instructions for installing the latest version of Elixir on any operating system are available at [http://elixir-lang.org/install.html)](http://elixir-lang.org/install.html)

To install the latest version of Elixir on MacOS using Homebrew run `brew install elixir`

Installing Elixir via Homebrew will also install:

__Erlang/OTP__ - Homebrew automatically installs Erlang if it’s not already present:
- Elixir is built on top of the Erlang VM (BEAM), so Erlang is a mandatory dependency.  
- Erlang includes the BEAM virtual machine, standard libraries, and tools like `erl` (Erlang shell) and `erlc` (Erlang compiler)
- Common Erlang versions installed depend on the Elixir version (e.g., Elixir 1.17 typically requires Erlang 24 or higher, but Homebrew may install the latest compatible version, such as Erlang 27 or 28).

__Homebrew Dependencies__ - If you install Elixir using Homebrew, it may pull in additional dependencies required by Erlang or Elixir, such as:
- OpenSSL: Used for cryptographic functions in Erlang/Elixir.
- wxWidgets: Optional, for graphical tools like Erlang’s :observer (not always installed by default).
- libxslt or other libraries: Occasionally required for parsing or building documentation.

__Elixir Tools and Binaries__ - The Elixir installation includes the following command-line tools:
- `elixir`: Runs Elixir scripts.
- `elixirc`: Compiles Elixir code.
- `iex`: The interactive Elixir shell (Interactive Elixir).
- `mix`: Elixir’s build tool for managing projects, dependencies, and tasks.

These are installed in the system’s binary path (e.g., /usr/local/bin or /opt/homebrew/bin for Apple Silicon). Run `brew deps elixir` to see the full list of Homebrew dependencies.

__Hex Package Manager__:
- While not installed automatically, `mix` (included with Elixir) can install Hex, the package manager for Elixir, the first time you run the command `mix local.hex`
- Hex is a client-side tool that interacts with the Hex.pm repository to manage Elixir libraries and dependencies.
- If you already have Hex installed, you'll be asked if you want to upgrade Hex to the latest version.

__Phoenix Framework__ - Finally, with Elixir and Hex installed, you can install the Phoenix application generator using:
```
mix archive.install hex phx_new
```


To check which versions are installed:
```
erl -v
elixir -v
mix -v
mix phx.new -v
```

__ElixirLS__ - extension for Elixir support and Phoenix Framework extension for syntax highlighting of HEEx templates:
- [https://marketplace.visualstudio.com/items?itemName=JakeBecker.elixir-ls](https://marketplace.visualstudio.com/items?itemName=JakeBecker.elixir-ls)

With the following VS Code settings:
```
"elixirLS.suggestSpecs": false,
"elixirLS.dialyzerEnabled": true,
"elixirLS.signatureAfterComplete": false,
"elixirLS.fetchDeps": false,

"files.associations": {
  "*.heex": "phoenix-heex"
},

"[elixir]": {
  "editor.formatOnSave": true,
  "editor.defaultFormatter": "elixir-lsp.elixir-ls"
},

"[phoenix-heex]": {
  "editor.formatOnSave": true,
  "editor.defaultFormatter": "elixir-lsp.elixir-ls"
},
```


### 2. Install PostgreSQL
Phoenix applications are configured to use a PostgreSQL database by default. Version 9.5 or greater is required.

If you're already using the Homebrew package manager, you can install PostgreSQL using `brew install postgresql`

Up-to-date binary packages for a variety of operatings system are available at [https://www.postgresql.org/download/](https://www.postgresql.org/download/). For example, if you're on a Mac you can use [https://postgresapp.com/](https://postgresapp.com/)

To check which version you have installed, use:
```
psql --version
```
Phoenix assumes that your PostgreSQL installation has a user named `postgres` with a password of `postgres`.

If you prefer to use Docker, it's easy to spin up a PostgreSQL container:
```
docker pull postgres

docker run -d -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 --name my_postgres_container postgres
```
