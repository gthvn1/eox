import calculator/lexer
import gleam/erlang
import gleam/io
import gleam/string

/// Start a REPL and echo each string
pub fn start() -> Nil {
  case erlang.get_line(">> ") {
    Ok(s) -> {
      // We can remove the endline and extra spaces if any at the end
      lexer.from_string(string.trim_end(s)) |> echo
      start()
    }
    Error(erlang.Eof) -> io.println("Bye!!!")
    Error(erlang.NoData) -> start()
  }
}
