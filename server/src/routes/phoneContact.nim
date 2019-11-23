proc phoneContact*(): JsonNode =
  let user = UserSchema.getOne(
    cond = &"name='{user}'"
  )
  %*user.phone
