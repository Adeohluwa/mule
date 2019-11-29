import json
import norm/postgres
import "../models/models.nim"


proc createUser*(user, pass: string): JsonNode =
  withDb:
    var newUser = UserProfile(
      name: user,
      pass: pass
    )
    newUser.insert()
    %*newUser

