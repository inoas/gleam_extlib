pub external type Array(any)

pub fn new() -> Array(any) {
  do_from_list([])
}

pub fn from_list(l: List(any)) -> Array(any) {
  do_from_list(l)
}

if erlang {
  external fn do_from_list(l: List(any)) -> Array(any) =
    "extlib" "array_from_list"
}

if javascript {
  external fn do_from_list(l: List(any)) -> Array(any) =
    "../extlib.mjs" "array_from_list"
}

pub fn to_list(arr: Array(any)) -> List(any) {
  do_to_list(arr)
}

if erlang {
  external fn do_to_list(arr: Array(any)) -> List(any) =
    "extlib" "array_to_list"
}

if javascript {
  external fn do_to_list(arr: Array(any)) -> List(any) =
    "../extlib.mjs" "array_to_list"
}

pub fn set(arr: Array(any), index i: Int, value val: any) -> Array(any) {
  do_set(arr, i, val)
}

if erlang {
  external fn do_set(arr: Array(any), i: Int, val: any) -> Array(any) =
    "extlib" "array_set"
}

if javascript {
  external fn do_set(arr: Array(any), i: Int, val: any) -> Array(any) =
    "../extlib.mjs" "array_set"
}

pub fn get(arr: Array(any), index i: Int) -> Result(any, Nil) {
  do_get(arr, i)
}

if erlang {
  external fn do_get(arr: Array(any), i: Int) -> Result(any, Nil) =
    "extlib" "array_get"
}

if javascript {
  external fn do_get(arr: Array(any), i: Int) -> Result(any, Nil) =
    "../extlib.mjs" "array_get"
}