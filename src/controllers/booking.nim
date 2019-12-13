proc cancelBooking*(): JsonNode =
  var tmp = UserSchema.getOne(
      cond = &"name='{user}'"
    )
    tmp.booked = false
    tmp.update()
    %*tmp.booked
proc createBooking*(): JsonNode =
  let user = UserSchema.getOne(
      cond = &"name='{user}'"
    )
    user.booked = true
    user.update()
    %*user
