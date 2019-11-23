import jester
import controllers

router endPoints:

  post "/user":
    # /create           -- create user  
    resp createUser()
  
  get "/users":
    # /online           -- get online users
    resp "works"

  post "/package":
    # /send             -- send package
    # /deliver          -- deliver package
    resp "works" 

  post "/review":
    # /get              -- get review
    # /create           -- create review
      resp "works"
   
  post "/booking":
    # /create           -- create booking 
    # /cancel           -- cancel booking
    resp "works"

  post "/contact":
    # /phone            -- display phone
    resp "works"

  post "/delivery":
    # /track            -- track delivery
    # /confirm          -- confirm delivery
    resp "works"
