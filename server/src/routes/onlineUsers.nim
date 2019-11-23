proc onlineUsers*(): JsonNode =
  let online = UserSchema.getMany(
      100,
      cond = "switch='on'"
    )
  %*online
