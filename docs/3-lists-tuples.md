## Lists, Tuples, and Basic Pattern Matching
Lists and tuples are core data structures in Elixir, and pattern matching is a powerful feature that simplifies data manipulation and control flow.

Concepts Covered:
- Lists (linked lists, dynamic)
- Tuples (fixed-size, contiguous memory)
- Pattern matching basics
- List operations (head/tail, concatenation)

```elixir
# Lists (dynamic, linked lists)
numbers = [1, 2, 3, 4]
[head | tail] = numbers     # head = 1, tail = [2, 3, 4]
new_list = [0 | numbers]    # => [0, 1, 2, 3, 4]
length(numbers)             # => 4
Enum.at(numbers, 1)         # => 2 (access index 1)

# Tuples (fixed-size, often used for return values)
person = {:name, "Bob", :age, 30}
{status, value} = {:ok, 42} # Pattern matching tuple

# Pattern Matching
[a, b, c] = [1, 2, 3]      # a = 1, b = 2, c = 3
{:ok, result} = {:ok, 100}  # result = 100
# {:error, _} = {:ok, 100}  # This will raise a MatchError

# List Operations
concat = [1, 2] ++ [3, 4]  # => [1, 2, 3, 4]
diff = [1, 2, 3] -- [2]    # => [1, 3]
```

Tips for Beginners:
- Lists are used for collections of similar items; tuples are for fixed-size, heterogeneous data (e.g., `{:ok, value}`).
- Pattern matching is like “destructuring” in other languages but more powerful; it’s used everywhere in Elixir.