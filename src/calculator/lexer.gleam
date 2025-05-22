import gleam/io
import gleam/list
import gleam/string

pub type OpType {
  Add
  Sub
  Mul
  Div
}

pub type Token {
  Integer(value: Int)
  Operation(ty: OpType)
}

// TODO: keep integer
// TODO: use float insteaf of integer
fn get_token(c: UtfCodepoint) -> Result(Token, Nil) {
  case string.utf_codepoint_to_int(c) {
    // *
    42 -> Ok(Operation(Mul))
    // +
    43 -> Ok(Operation(Add))
    // -
    45 -> Ok(Operation(Sub))
    // /
    47 -> Ok(Operation(Div))
    // 0..9
    i if 48 <= i && i <= 57 -> Ok(Integer(i - 48))
    // TODO: add assignement and so keep char
    // A..Z
    //i if 65 <= i && i <= 90 -> Ok(i)
    // a..z
    //i if 97 <= i && i <= 122 -> Ok(i)
    _ -> Error(Nil)
  }
}

pub fn from_string(input: String) -> Nil {
  io.println("ECHO: " <> input)
  let lst = input |> string.to_utf_codepoints |> list.filter_map(get_token)
  echo lst
  Nil
}
