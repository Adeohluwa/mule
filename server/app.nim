import jester, routes/api

routes:
  post "/api/":
    resp "{status:working}"
  post "/api/dp/@user/@origin/@destination":
    resp deliverPackage(@"user",@"origin", @"destination")
  post "/api/sp/@user/@origin/@destination":
    resp sendPackage(@"user",@"origin",@"destination")
  post "/api/lr/@user/@review/@comment?":
    resp leaveReview(@"user",@"review",@"comment")
  post "/api/gr/@user":
    resp getReview(@"user")
  post "/api/dph/@user":
    resp displayPhone(@"user")
  post "/api/cb/@user":
    resp cancelBooking(@"user")
  post "/api/st":
    resp startTracking()
  post "/api/cd":
    resp confirmDelivery()
  post "/api/te":
    resp totalEarned()
  post "/api/ts":
    resp totalSaved()
  post "/api/rf":
    resp referFriends()
  post "/api/ou":
    resp onlineUsers()
  post "/api/bus":
    resp bookedUsers()
  post "/api/bu/@user":
    resp bookUser(@"user")