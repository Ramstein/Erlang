defmodule Todos do
  def hello_world do
    # "Hello World!"
    # ["apples", "oranges", "bananas"]
    IO.puts("Hello World!")
    IO.gets("Hello World! ")
  end

  # todo -complete later
  def create_todos do
    # old code not so nice
    # number_of_tasks = IO.gets("Enter the number of todos you want to add? ") # {3, "\n}
    # {number_of_tasks, _q} = Integer.parse(number_of_tasks)
    # number_of_tasks

    # cool code -pipe operator
    # the |> operator is mostly useful when there is a desire to execute a series of operatiosn resembling a pipeline
    {number_of_tasks, _} =
      IO.gets("Enter the number of todos you want to add? ") |> Integer.parse()

    # number_of_tasks

    for _ <- 1..number_of_tasks do
      # tasks = IO.gets("Enter a task: ")
      # String.trim(tasks)
      IO.gets("Enter a task: ") |> String.trim()
    end
  end

  def temp_todos do
    ["eat apple", "read book", " elixir series", "exercise"]
  end

  def contains?(tasks, task) do
    Enum.member?(tasks, task)
  end

  def random_tasks(tasks) do
    # Enum.take_random(tasks, 1)
    [task] = Enum.take_random(tasks, 1)
    task
  end

  def keyword_search(tasks, keyword) do
    for task <- tasks, String.contains?(task, keyword) do
      IO.puts(task)
    end
  end

  def complete_todo(tasks, task) do
    if contains?(tasks, task) do
      List.delete(tasks, task)
    else
      :not_found_error
    end
  end

  def add_new_todo(tasks, task) do
    List.insert_at(tasks, -1, task)
  end

  # Writing to filesystem
  # Elixir (what we write) gets transated to Erlang so we can also use the features of Erlang
  # Erlang Abstract Format
  # Actual Erlang code
  # BEAM (Virtaul Machine) byte code

  def save(tasks, filename) do
    # invoking erlang code, converting our list to binary so that it can be stored in filesystem
    binary = :erlang.term_to_binary(tasks)
    File.write(filename, binary)
  end

  @spec read(
          binary
          | maybe_improper_list(
              binary | maybe_improper_list(any, binary | []) | char,
              binary | []
            )
        ) :: any
  def read(filename) do
    # reading from filesystem
    # {_status, binary} = File.read(filename)
    # :erlang.binary_to_term(binary)

    # case statements
    case File.read(filename) do
      # when :erlang.binary_to_term(binary) do
      #   :erlang.binary_to_term(binary)
      # else
      #   :not_found_error
      {:ok, binary} -> :erlang.binary_to_term(binary)
      {:error, _reason} -> "File does not exist"
    end
  end

  def main do
    data_stuff()
  end

  def data_stuff() do
    # name = IO.gets("What's your name?" ) |> String.trim()
    # IO.puts("Hello, #{name}!")
    my_int = 123
    IO.puts("Integer: #{is_integer(my_int)}")
    my_float = 123.022
    IO.puts("Float: #{is_float(my_float)}")
    IO.puts("Atom #{is_atom(:Pittsburgh)}")

    _one_to_10 = 1..10

    my_str = "My Sentence"
    IO.puts("length of string: #{String.length(my_str)}")
    longer_str = my_str <> " " <> "is longer"
    IO.puts("length of longer string: #{String.length(longer_str)}")
    IO.puts("Equal : #{"Egg" === "egg"}")

    IO.puts("My ? #{String.contains?(my_str, "My")}")
    IO.puts("index 4: #{String.at(my_str, 4)}")
    IO.puts("substring: #{String.slice(my_str, 4, 8)}")

    IO.inspect(String.split(longer_str, " "))

    IO.puts(String.reverse(longer_str))
    IO.puts(String.upcase(longer_str))
    IO.puts(String.downcase(longer_str))
    IO.puts(String.capitalize(longer_str))

    (4 * 10) |> IO.puts()

    IO.puts("5+4 = #{5 + 4}")
    IO.puts("5-4 = #{5 - 4}")
    IO.puts("5*4 = #{5 * 4}")
    IO.puts("5/4 = #{5 / 4}")
    IO.puts("5 div 4 = #{div(5, 4)}")
    IO.puts("5 rem 4 = #{rem(5, 4)}")

    # comparing just value not datatype
    IO.puts("4 == 4.0 #{4 == 4.0}")
    # comparing value and datatype both
    IO.puts("4 === 4.0 #{4 === 4.0}")
    # comparing just value not datatype
    IO.puts("4 != 4.0 #{4 != 4.0}")
    # comapring value and datatype both
    IO.puts("4 !== 4.0 #{4 !== 4.0}")

    IO.puts("5 < 4.0 #{5 < 4.0}")

    age = 16
    IO.puts("Vote and Drive: #{age >= 16 and age >= 18}")
    IO.puts("Vote or Drive: #{age >= 16 or age >= 18}")

    if age >= 18 do
      IO.puts("You can vote and drive")
    else
      IO.puts("You can't vote and drive")
    end

    unless age === 18 do
      IO.puts("You can't vote and drive")
    else
      IO.puts("You can vote and drive")
    end

    cond do
      age >= 18 -> IO.puts("You can vote")
      age >= 16 -> IO.puts("You can drive")
      age >= 14 -> IO.puts("You can wait")
      true -> IO.puts("You can't do anything,  default")
    end

    case 2 do
      1 -> IO.puts("One")
      2 -> IO.puts("Two")
      _ -> IO.puts("Default")
    end
    IO.puts("Ternary: #{if age >= 18, do: "You can vote and drive", else: "You can't vote and drive"}")


    my_stats = {175, 6.25, :Derek}
    IO.puts("Tuple: #{is_tuple(my_stats)}")

    my_stats2 = Tuple.append(my_stats, :amsterdem)

  end
end
