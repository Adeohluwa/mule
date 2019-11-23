proc createUser*(): =
  let newUser = UserSchema(
    name: ,
    password:,
    phone:,

  )
  newUser.insert()
