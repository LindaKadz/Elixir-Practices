handle_open = fn
  {:ok, file} -> "Read this #{IO.read(file, :line)}"
  {_, error} -> "No such file #{:file.format_error(error)}"
end
IO.puts handle_open.(File.open("trial"))
IO.puts handle_open.(File.open("juzjuz"))
