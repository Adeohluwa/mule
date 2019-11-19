import unicode

template `~`(arg: untyped) =
  let file = ($arg & ".nim").toLower
  let source = readFile(file)
  echo source




type
  Users = object
    name: string
    age: int

~ Users
