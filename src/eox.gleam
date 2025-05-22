import calculator/repl
import gleam/io

pub fn main() -> Nil {
  io.println("Hello from eox!")
  io.println("Crtl+d to exit...")
  repl.start()
}
