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
  let ascii_0 = 48
  let ascii_9 = 57

  case string.utf_codepoint_to_int(c) {
    42 -> Ok(Operation(Mul))
    43 -> Ok(Operation(Add))
    45 -> Ok(Operation(Sub))
    47 -> Ok(Operation(Div))
    i if ascii_0 <= i && i <= ascii_9 -> Ok(Integer(i - ascii_0))
    _ -> Error(Nil)
  }
}

pub fn from_string(input: String) -> List(Token) {
  input |> string.to_utf_codepoints |> list.filter_map(get_token)
}
