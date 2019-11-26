import jester
import ../controllers/users


router endPoints:
  ## /user
  post "/user/create":
    let u = request.params["user"]
    let p = request.params["pass"]
    resp createUser("ade", "pass")



  get "/user/online":
    resp "works"
 


  ## /package
  post "/package/send":
    resp "works"
  post "/package/deliver":
    resp "works"
 


  ## /review
  get "/review/":
    resp "works"
  post "/review":
    resp "works"
   
 

  ## /booking
  post "/booking/create":
    resp "works"
  post "/booking/cancel":
    resp "works"

 

  ## /contact
  get "/contact":
    resp "works"



  ## /delivery
  get "/delivery/track":
    resp "works"
  post "/delivery/confirm":
    resp "works"
