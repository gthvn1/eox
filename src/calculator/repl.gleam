import gleam/erlang
import gleam/io
import gleam/string

/// Start a REPL and echo each string
pub fn start() -> Nil {
  case erlang.get_line(">> ") {
    Ok(s) -> {
      // We can remove the endline and extra spaces if any at the end
      io.println("ECHO: " <> string.trim_end(s))
      start()
    }
    Error(erlang.Eof) -> io.println("Bye!!!")
    Error(erlang.NoData) -> start()
  }
}
