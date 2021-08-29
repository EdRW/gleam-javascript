import gleam/javascript/array

pub fn to_and_from_list_test() {
  assert [] =
    []
    |> array.from_list
    |> array.to_list

  assert [1, 2, 3] =
    [1, 2, 3]
    |> array.from_list
    |> array.to_list
}

pub fn length_test() {
  assert 0 =
    array.from_list([])
    |> array.length
}

pub fn map_test() {
  assert [] =
    []
    |> array.from_list
    |> array.map(fn(a) { a + 1 })
    |> array.to_list

  assert [2, 3, 4] =
    [1, 2, 3]
    |> array.from_list
    |> array.map(fn(a) { a + 1 })
    |> array.to_list
}
