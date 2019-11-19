#import ../models/users
import strformat, math, json, sugar

#[
proc bookUser*(): JsonNode =
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

]#

proc deliverPackage*(): JsonNode =
  %*"{key:value}"
  #withDb:
   # var mule  = UserSchema(
    #  name: request.body[user],
    #  origin: request.body[origin],
    #  destination: request.body[destination],
    #  online: true
    #)
    #mule.insert()
    #%*mule

#[
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



proc getReview*(): JsonNode =
  withDb:
    var reviews = Feedback.getMany(
      10000,
      cond= &"name='{user}'"
    )
    var revs = lc[each.rating | (each <- reviews),int]
    var avg = sum(revs) / len(revs)
    %*avg



proc leaveReview*(): JsonNode =
  withDb:
    var newReview  = Feedback(
      name: user,
      rating: review,
      comment: comment
    )
    newReview.insert()
    %*newReview



proc displayPhone*(): JsonNode =
  withDb:
    var user = UserSchema.getOne(
      cond = &"name='{user}'"
    )
    %*user.phone



proc cancelBooking*(): JsonNode =
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
  %*"/dp working"]#
