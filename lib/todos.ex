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
    {number_of_tasks, _} = IO.gets("Enter the number of todos you want to add? ") |> Integer.parse()
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

end
