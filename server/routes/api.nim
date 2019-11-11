include "../models/db.nim"
import strformat, math, json, sugar



proc bookUser*(user: string): JsonNode =
  withDb:
    var user = UserSchema.getOne(
      cond = &"name='{user}'"
    )
    user.booked = true
    user.update()
    %*user



proc bookedUsers*(): JsonNode =
  withDb:
    let booked = UserSchema.getMany(
      100,
      cond = "booked=true"
    )
    %*booked



proc onlineUsers*(): JsonNode =
  withDb:
    let online = UserSchema.getMany(
      100,
      cond = "switch='on'"
    )
    %*online



proc deliverPackage*(user,origin, destination: string): JsonNode =
  withDb:
    var mule  = UserSchema(
      name: user,
      origin: origin,
      destination: destination,
      switch: "on"
    )
    mule.insert()
    %*mule



proc sendPackage*(user,origin,destination: string): JsonNode =
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



proc getReview*(user: string): JsonNode =
  withDb:
    var reviews = Feedback.getMany(
      10000,
      cond= &"name='{user}'"
    )
    var revs = lc[each.rating | (each <- reviews),int]
    var avg = sum(revs) / len(revs)
    %*avg



proc leaveReview*(user,review,comment: string): JsonNode =
  withDb:
    var newReview  = Feedback(
      name: user,
      rating: parseInt(review),
      comment: comment
    )
    newReview.insert()
    %*newReview



proc displayPhone*(user: string): JsonNode =
  withDb:
    var user = UserSchema.getOne(
      cond = &"name='{user}'"
    )
    %*user.phone



proc cancelBooking*(user: string): JsonNode =
  withDb:
    var tmp = UserSchema.getOne(
      cond = &"name='{user}'"
    )
    tmp.booked = false
    tmp.update()
    %*tmp.booked

proc confirmDelivery*(): JsonNode =
  %*"/dp working"

proc startTracking*(): JsonNode =
  %*"/dp working"
 
proc totalEarned*(): JsonNode =
  %*"/dp working"

proc totalSaved*(): JsonNode =
  %*"/dp working"

proc referFriends*(): JsonNode =
  %*"/dp working"