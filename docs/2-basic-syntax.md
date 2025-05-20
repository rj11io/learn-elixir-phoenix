## Basic Syntax and Data Types

Elixir’s syntax is concise and expressive, and understanding its basic data types is essential for writing any program. This forms the foundation for everything else.

Concepts Covered:
- Variables (dynamic, immutable)
- Basic data types: integers, floats, atoms, strings, booleans
- Basic operations (arithmetic, comparison)
- Comments and interpolation

```elixir
# Variables (immutable, no reassignment; use = for pattern matching)
name = "Alice"  # String
age = 25        # Integer
price = 19.99   # Float
:ok             # Atom (constants with a name)
is_active = true # Boolean

# Arithmetic
sum = 5 + 3     # => 8
div_result = div(10, 2) # => 5 (integer division)
rem_result = rem(10, 3) # => 1 (remainder)

# Comparison
5 == 5.0        # => true (value equality)
5 === 5.0       # => false (strict equality, checks type)
5 != 6          # => true

# Strings and Interpolation
greeting = "Hello, #{name}!" # => "Hello, Alice!"
multiline = """
  This is a
  multiline string
"""

# Comments
# This is a single-line comment
```

Tips for Beginners:
- Variables in Elixir are immutable; once bound, their value cannot change (though you can rebind with `=`).
- Atoms (e.g., `:ok`, `:error`) are used widely in Elixir for status codes or keys.