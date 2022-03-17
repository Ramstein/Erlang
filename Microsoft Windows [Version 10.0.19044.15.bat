Microsoft Windows [Version 10.0.19044.1586]
(c) Microsoft Corporation. All rights reserved.

C:\Users\user\elixir_project\todos>iex
Interactive Elixir (1.13.3) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Todos.hello_world
** (UndefinedFunctionError) function Todos.hello_world/0 is undefined (module Todos is not available)
    Todos.hello_world()
iex(1)> recompile
Mix is not running. Please start IEx with: iex -S mix
:error
iex(2)> Terminate batch job (Y/N)? y

C:\Users\user\elixir_project\todos>iex -S mix
Compiling 1 file (.ex)
Generated todos app
Interactive Elixir (1.13.3) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> recompile
:noop
iex(2)> Todos.hello_world
"Hello World!"
iex(3)> Todos 
Todos
iex(4)> Todos.
...(4)> 
...(4)> 
...(4)> 
...(4)> 
...(4)> 
...(4)> Terminate batch job (Y/N)? y

C:\Users\user\elixir_project\todos>iex -S mix
Interactive Elixir (1.13.3) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> Todos.hello_world
"Hello World!"
iex(2)> recopile
** (CompileError) iex:2: undefined function recopile/0 (there is no such import)

iex(2)> recompile
Compiling 1 file (.ex)
warning: the call to +/2 will fail with ArithmeticError
  lib/todos.ex:4

:ok
iex(3)> recompile
Compiling 1 file (.ex)
:ok
iex(4)> 
nil
iex(5)> Todos.hello_world
["apples", "oranges", "bananas"]
iex(6)> recompile 
Compiling 1 file (.ex)
:ok
iex(7)> Todos.hello_world
Hello World!
:ok
iex(8)> Todos.
...(8)> recompile
** (UndefinedFunctionError) function Todos.recompile/0 is undefined or private
    (todos 0.1.0) Todos.recompile()
iex(8)> recompile
Compiling 1 file (.ex)
:ok
iex(9)> Todos.hello_world
Hello World!
Hello World! ttt
"ttt\n"
iex(10)> recompile
Compiling 1 file (.ex)
:ok
iex(11)> Todos.create_todos
Enter  the number of todos you want to add? 5
"5\n"
iex(12)> a="12" 
"12"
iex(13)> a
"12"
iex(14)> Integer.parse(a)
{12, ""}
iex(15)> parse_return =  Integer.parse(a)
{12, ""}
iex(16)> parse_return
{12, ""}
iex(17)> parse_return = {12, ""} 
{12, ""}
iex(18)> {a,b} = Integer.parse(a)
{12, ""}
iex(19)> a
12
iex(20)>
nil
iex(21)> b
""
iex(22)> recompile
Compiling 1 file (.ex)
:ok
iex(23)> todos.create_todos
** (CompileError) iex:23: undefined function todos/0 (there is no such import)

iex(23)> Todos.create_todos
Enter  the number of todos you want to add? 5
5
iex(24)> Todos.
...(24)> Todos.
...(24)> Terminate batch job (Y/N)? y

C:\Users\user\elixir_project\todos>iex -S mix
Interactive Elixir (1.13.3) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> IO.gets("Enter something")
Enter something4
"4\n"
iex(2)> recompile
Compiling 1 file (.ex)
:ok
iex(3)> Todos.create_todos
Enter  the number of todos you want to add? 5
5
iex(4)> recompile
Compiling 1 file (.ex)
:ok
iex(5)> Todos.temp_todos
["eat apple", "read book", " elixir series", "exercise"]
iex(6)> recompile
Compiling 1 file (.ex)

== Compilation error in file lib/todos.ex ==
** (ArgumentError) cannot invoke def/2 inside function/macro
    (elixir 1.13.3) lib/kernel.ex:6119: Kernel.assert_no_function_scope/3
    (elixir 1.13.3) lib/kernel.ex:4840: Kernel.define/4
    (elixir 1.13.3) expanding macro: Kernel.def/2
    (todos 0.1.0) lib/todos.ex:26: Todos.temp_todos/0
** (exit) shutdown: 1
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:78: Mix.Tasks.Compile.All.compile/4
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:59: Mix.Tasks.Compile.All.with_logger_app/2
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:36: Mix.Tasks.Compile.All.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (mix 1.13.3) lib/mix/tasks/compile.ex:131: Mix.Tasks.Compile.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (iex 1.13.3) lib/iex/helpers.ex:107: IEx.Helpers.recompile/1
iex(6)> recompile
Compiling 1 file (.ex)

== Compilation error in file lib/todos.ex ==
** (SyntaxError) lib/todos.ex:36:1: unexpected reserved word: end

    HINT: it looks like the "end" on line 32 does not have a matching "do" defined before it

    (elixir 1.13.3) lib/kernel/parallel_compiler.ex:346: anonymous fn/5 in Kernel.ParallelCompiler.spawn_workers/7
** (exit) shutdown: 1
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:78: Mix.Tasks.Compile.All.compile/4
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:59: Mix.Tasks.Compile.All.with_logger_app/2
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:36: Mix.Tasks.Compile.All.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (mix 1.13.3) lib/mix/tasks/compile.ex:131: Mix.Tasks.Compile.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (iex 1.13.3) lib/iex/helpers.ex:107: IEx.Helpers.recompile/1
iex(6)> recompile
Compiling 1 file (.ex)

== Compilation error in file lib/todos.ex ==
** (SyntaxError) lib/todos.ex:36:1: unexpected reserved word: end

    HINT: it looks like the "end" on line 32 does not have a matching "do" defined before it

    (elixir 1.13.3) lib/kernel/parallel_compiler.ex:346: anonymous fn/5 in Kernel.ParallelCompiler.spawn_workers/7
** (exit) shutdown: 1
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:78: Mix.Tasks.Compile.All.compile/4
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:59: Mix.Tasks.Compile.All.with_logger_app/2
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:36: Mix.Tasks.Compile.All.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (mix 1.13.3) lib/mix/tasks/compile.ex:131: Mix.Tasks.Compile.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (iex 1.13.3) lib/iex/helpers.ex:107: IEx.Helpers.recompile/1
iex(6)> recompile
Compiling 1 file (.ex)
:ok
iex(7)> Todos.temp_todos
["eat apple", "read book", " elixir series", "exercise"]
iex(8)> todo
** (CompileError) iex:8: undefined function todo/0 (there is no such import)

iex(8)> Todos.contains?(to) 
** (CompileError) iex:8: undefined function to/0 (there is no such import)

iex(8)>
nil     
iex(9)> todos_list = Todos.temp_todos 
["eat apple", "read book", " elixir series", "exercise"]
iex(10)> Todos.contains?(todos_list, "read book") 
true
iex(11)> Todos.contains?(todos_list, "go shopping") 
false
iex(12)> recompile                                  
Compiling 1 file (.ex)
:ok
iex(13)> todo_list
** (CompileError) iex:13: undefined function todo_list/0 (there is no such import)

iex(13)> todos_list 
["eat apple", "read book", " elixir series", "exercise"]
iex(14)> Todos.random_tasks(tasks_list)
** (CompileError) iex:14: undefined function tasks_list/0 (there is no such import)

iex(14)> Todos.random_tasks(todos_list) 
["eat apple"]
iex(15)> Todos.random_tasks(todos_list)
["exercise"]
iex(16)> Todos.random_tasks(todos_list)
["eat apple"]
iex(17)> Todos.random_tasks(todos_list)
["eat apple"]
iex(18)> Todos.random_tasks(todos_list)
[" elixir series"]
iex(19)> Todos.random_tasks(todos_list)
["read book"]
iex(20)> recompile
Compiling 1 file (.ex)

== Compilation error in file lib/todos.ex ==
** (SyntaxError) lib/todos.ex:39:1: unexpected reserved word: end

    HINT: it looks like the "end" on line 36 does not have a matching "do" defined before it

    (elixir 1.13.3) lib/kernel/parallel_compiler.ex:346: anonymous fn/5 in Kernel.ParallelCompiler.spawn_workers/7
** (exit) shutdown: 1
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:78: Mix.Tasks.Compile.All.compile/4
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:59: Mix.Tasks.Compile.All.with_logger_app/2
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:36: Mix.Tasks.Compile.All.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (mix 1.13.3) lib/mix/tasks/compile.ex:131: Mix.Tasks.Compile.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (iex 1.13.3) lib/iex/helpers.ex:107: IEx.Helpers.recompile/1
iex(20)> recompile
Compiling 1 file (.ex)

== Compilation error in file lib/todos.ex ==
** (SyntaxError) lib/todos.ex:39:1: unexpected reserved word: end

    HINT: it looks like the "end" on line 36 does not have a matching "do" defined before it

    (elixir 1.13.3) lib/kernel/parallel_compiler.ex:346: anonymous fn/5 in Kernel.ParallelCompiler.spawn_workers/7
** (exit) shutdown: 1
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:78: Mix.Tasks.Compile.All.compile/4
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:59: Mix.Tasks.Compile.All.with_logger_app/2
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:36: Mix.Tasks.Compile.All.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (mix 1.13.3) lib/mix/tasks/compile.ex:131: Mix.Tasks.Compile.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (iex 1.13.3) lib/iex/helpers.ex:107: IEx.Helpers.recompile/1
iex(20)> rcompile
** (CompileError) iex:20: undefined function rcompile/0 (there is no such import)

iex(20)> rcompile
** (CompileError) iex:20: undefined function rcompile/0 (there is no such import)

iex(20)> rcompile
** (CompileError) iex:20: undefined function rcompile/0 (there is no such import)

iex(20)> recompile
Compiling 1 file (.ex)
:ok
iex(21)> Todos.random_tasks(todos_list) 
[" elixir series", "exercise"]
iex(22)> recompile
:noop
iex(23)> Todos.random_tasks(todos_list)
["read book", "exercise"]
iex(24)> recompile
Compiling 1 file (.ex)
:ok
iex(25)> Todos.random_tasks(todos_list)
** (MatchError) no match of right hand side value: ["exercise", " elixir series"]
    (todos 0.1.0) lib/todos.ex:34: Todos.random_tasks/1
iex(25)> recompile
Compiling 1 file (.ex)
:ok
iex(26)> Todos.random_tasks(todos_list)
"exercise"
iex(27)> Todos.random_tasks(todos_list)
"read book"
iex(28)>
nil
iex(29)> Todos.random_tasks(todos_list)
"read book"
iex(30)> Todos.random_tasks(todos_list)
"eat apple"
iex(31)> Todos.random_tasks(todos_list)
" elixir series"
iex(32)> Todos.random_tasks(todos_list)
"exercise"
iex(33)> Todos.random_tasks(todos_list)
" elixir series"
iex(34)> for i <- [1,2,3], do:i
** (SyntaxError) iex:34:19: keyword argument must be followed by space after: do:
    |
 34 | for i <- [1,2,3], do:i
    |                   ^

iex(34)> for i <- [1,2,3], do: i
[1, 2, 3]
iex(35)> for i <- [1,2,3], do: i*i
[1, 4, 9]
iex(36)> for i <- 1..30, do: i
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,
 23, 24, 25, 26, 27, 28, 29, 30]
iex(37)> for i <- 1..30, do: i%2
** (SyntaxError) iex:37:24: unexpectedly reached end of line. The current expression is invalid or incomplete

iex(37)> import Integer
Integer
iex(38)> for i <- 1..30, Integer.is_even(i), do: i
[2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30]
iex(39)> for i <- [1,2,3], y <- [4,5,6], do: i+y
[5, 6, 7, 6, 7, 8, 7, 8, 9]
iex(40)> items = Todos.temp_todos
["eat apple", "read book", " elixir series", "exercise"]
iex(41)> item
** (CompileError) iex:41: undefined function item/0 (there is no such import)

iex(41)> items
["eat apple", "read book", " elixir series", "exercise"]
iex(42)> for item <- items, String.contains?(item, "book"), do: item
["read book"]
iex(43)> recompile
Compiling 1 file (.ex)
:ok
iex(44)> Todos.keyword_search(items, "elixir")
 elixir series
[:ok]
iex(45)> for i <- 1..3 do: IO.gets("Enter Something: ")
** (SyntaxError) iex:45:15: unexpected keyword: do:. In case you wanted to write a "do" expression, you must either use do-blocks or separate the keyword argument with comma. For example, you should either write:

    if some_condition? do
      :this
    else
      :that
    end

or the equivalent construct:

    if(some_condition?, do: :this, else: :that)

where "some_condition?" is the first argument and the second argument is a keyword list

iex(45)> eat apple
** (CompileError) iex:45: undefined function eat/1 (there is no such import)

iex(45)> for i <- 1..3, do: IO.gets("Enter Something: ") 
warning: variable "i" is unused (if the variable is not meant to be used, prefix it with an underscore)
  iex:45

Enter Something: read apple
Enter Something: read a book
Enter Something: go for walk
["read apple\n", "read a book\n", "go for walk\n"]
iex(46)> recompile
Compiling 1 file (.ex)
warning: variable "task" does not exist and is being expanded to "task()", please use parentheses to remove the ambiguity or change the variable name
  lib/todos.ex:24: Todos.create_todos/0

warning: variable "tasks" is unused (if the variable is not meant to be used, prefix it with an underscore)
  lib/todos.ex:23: Todos.create_todos/0


== Compilation error in file lib/todos.ex ==
** (CompileError) lib/todos.ex:24: undefined function task/0 (expected Todos to define such a function or for it to be imported, but none are available)

** (exit) shutdown: 1
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:78: Mix.Tasks.Compile.All.compile/4
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:59: Mix.Tasks.Compile.All.with_logger_app/2
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:36: Mix.Tasks.Compile.All.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (mix 1.13.3) lib/mix/tasks/compile.ex:131: Mix.Tasks.Compile.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (iex 1.13.3) lib/iex/helpers.ex:107: IEx.Helpers.recompile/1
iex(46)> recompile
Compiling 1 file (.ex)
:ok
iex(47)> Todos.create_todos
Enter the number of todos you want to add? 2
Enter a task: first
Enter a task: second
["first", "second"]
iex(48)> recompile
Compiling 1 file (.ex)
:ok
iex(49)> Todos.create_todos
Enter the number of todos you want to add? 2
Enter a task: test
Enter a task: test2
["test", "test2"]
iex(50)> recompile
Compiling 1 file (.ex)
:ok
iex(51)> tasks
** (CompileError) iex:51: undefined function tasks/0 (there is no such import)

iex(51)> tasks = Todos.create_todos
Enter the number of todos you want to add? 3
Enter a task: Hi would you come here
Enter a task: test it
Enter a task: oh, i love it
["Hi would you come here", "test it", "oh, i love it"]
iex(52)> Todos.complete_todo(tasks, "Watch Movie" 
...(52)> Todos.complete_todo(tasks, "Watch Movie")
...(52)> Terminate batch job (Y/N)? n

C:\Users\user\elixir_project\todos>iex -S mix
Interactive Elixir (1.13.3) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> tasks = Todos.create_todos
Enter the number of todos you want to add? 3
Enter a task: test2
Enter a task: test1
Enter a task: test3
["test2", "test1", "test3"]
iex(2)> Todos.complete_todo(tasks, "watch Movie")
:not_found_error
iex(3)> Todos.complete_todo(tasks, "test1")       
["test2", "test3"]
iex(4)> basket
** (CompileError) iex:4: undefined function basket/0 (there is no such import)

iex(4)> basket = ["apples", "pears", "mangoes"]
["apples", "pears", "mangoes"]
iex(5)> List.insert_at(basket, 0, "barries")
["barries", "apples", "pears", "mangoes"]
iex(6)> List.insert_at(basket, 2, "barries2") 
["apples", "pears", "barries2", "mangoes"]
iex(7)> List.insert_at(basket, -1, "barries_1") 
["apples", "pears", "mangoes", "barries_1"]
iex(8)> recompile
Compiling 1 file (.ex)
:ok
iex(9)> tasks
["test2", "test1", "test3"]
iex(10)> Todos.add_new_todo(tasks, "test4")
["test2", "test1", "test3", "test4"]
iex(11)> tasks
["test2", "test1", "test3"]
iex(12)> recompile
Compiling 1 file (.ex)
:ok
iex(13)> tasks
["test2", "test1", "test3"]
iex(14)> Todos.save(tasks, "tasks")
:ok
iex(15)> recompile
Compiling 1 file (.ex)
:ok
iex(16)> recompile
Compiling 1 file (.ex)
warning: variable "binary" does not exist and is being expanded to "binary()", please use parentheses to remove the ambiguity or change the variable name
  lib/todos.ex:76: Todos.save/2


== Compilation error in file lib/todos.ex ==
** (CompileError) lib/todos.ex:76: undefined function binary/0 (expected Todos to define such a function or for it to be imported, but none are available)

** (exit) shutdown: 1
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:78: Mix.Tasks.Compile.All.compile/4
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:59: Mix.Tasks.Compile.All.with_logger_app/2
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:36: Mix.Tasks.Compile.All.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (mix 1.13.3) lib/mix/tasks/compile.ex:131: Mix.Tasks.Compile.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (iex 1.13.3) lib/iex/helpers.ex:107: IEx.Helpers.recompile/1
iex(16)> recompile
Compiling 1 file (.ex)
warning: variable "binary" does not exist and is being expanded to "binary()", please use parentheses to remove the ambiguity or change the variable name
  lib/todos.ex:76: Todos.save/2


== Compilation error in file lib/todos.ex ==
** (CompileError) lib/todos.ex:76: undefined function binary/0 (expected Todos to define such a function or for it to be imported, but none are available)

** (exit) shutdown: 1
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:78: Mix.Tasks.Compile.All.compile/4
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:59: Mix.Tasks.Compile.All.with_logger_app/2
    (mix 1.13.3) lib/mix/tasks/compile.all.ex:36: Mix.Tasks.Compile.All.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (mix 1.13.3) lib/mix/tasks/compile.ex:131: Mix.Tasks.Compile.run/1
    (mix 1.13.3) lib/mix/task.ex:397: anonymous fn/3 in Mix.Task.run_task/3
    (iex 1.13.3) lib/iex/helpers.ex:107: IEx.Helpers.recompile/1
iex(16)> recompile
Compiling 1 file (.ex)
:ok
iex(17)> task
** (CompileError) iex:17: undefined function task/0 (there is no such import)

iex(17)> tasks
["test2", "test1", "test3"]
iex(18)> File.read("tasks)
...(18)> 
...(18)> 
...(18)> 
...(18)> 
...(18)> task
...(18)> task
...(18)> taskTerminate batch job (Y/N)? 
Terminate batch job (Y/N)? 
Terminate batch job (Y/N)? 
^C
C:\Users\user\elixir_project\todos>iex -S mix
Compiling 1 file (.ex)
Interactive Elixir (1.13.3) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> File.read("tasks")
{:ok,
 <<131, 108, 0, 0, 0, 3, 109, 0, 0, 0, 5, 116, 101, 115, 116, 50, 109, 0, 0, 0,
   5, 116, 101, 115, 116, 49, 109, 0, 0, 0, 5, 116, 101, 115, 116, 51, 106>>}
iex(2)> {status, binary} = File.read("tasks")
{:ok,
 <<131, 108, 0, 0, 0, 3, 109, 0, 0, 0, 5, 116, 101, 115, 116, 50, 109, 0, 0, 0,
   5, 116, 101, 115, 116, 49, 109, 0, 0, 0, 5, 116, 101, 115, 116, 51, 106>>}
iex(3)> binary
<<131, 108, 0, 0, 0, 3, 109, 0, 0, 0, 5, 116, 101, 115, 116, 50, 109, 0, 0, 0,
  5, 116, 101, 115, 116, 49, 109, 0, 0, 0, 5, 116, 101, 115, 116, 51, 106>>
iex(4)> :erlang.binary_to_term(binary)
["test2", "test1", "test3"]
iex(5)> recompile
Compiling 1 file (.ex)
warning: variable "status" is unused (if the variable is not meant to be used, prefix it with an underscore)
  lib/todos.ex:79: Todos.read/1

:ok
iex(6)> recompile
Compiling 1 file (.ex)
:ok
iex(7)> Todos.read("tasks")
["test2", "test1", "test3"]
iex(8)> recompile
Compiling 1 file (.ex)
:ok
iex(9)> Todos.read("tasks")
["test2", "test1", "test3"]
iex(10)> Todos.read("tasks55")
"File does not exist"
iex(11)>