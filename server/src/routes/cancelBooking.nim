proc cancelBooking*(): JsonNode =
  var tmp = UserSchema.getOne(
      cond = &"name='{user}'"
    )
    tmp.booked = false
    tmp.update()
    %*tmp.booked
