proc createBooking*(): JsonNode =
  let user = UserSchema.getOne(
      cond = &"name='{user}'"
    )
    user.booked = true
    user.update()
    %*user
