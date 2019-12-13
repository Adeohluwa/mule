proc deliverPackage*(): JsonNode =
   # var mule  = UserSchema(
    #  name: request.body[user],
    #  origin: request.body[origin],
    #  destination: request.body[destination],
    #  online: true
    #)
    #mule.insert()
    #%*mule
proc sendPackage*(): JsonNode =
  withDb:
    var users: seq[UserSchema] = @[]
    let online = UserSchema.getMany(
      100,
      cond = "switch='on'"
    )
    for user in online:
      if user.destination == destination:
        if user.origin == origin:
          users.add(user)
    %*users
