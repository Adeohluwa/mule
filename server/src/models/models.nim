import norm/postgres

db("localhost","ade","thiskeys7x8c6h9isverylong","mule"):     
  type
    UserSchema* = object
      name: string
      avatar: string
      phone: string
      origin: string
      destination: string
      booked: bool
      online: bool 
      verified: bool
      earnings: float
      savings: float
      country: string

  type 
    Feedback* = object
      name: string
      rating: int
      comment: string 

  type 
    Package* = object
      name: string
      photo: string
      weight: string

   
when isMainModule:
  withDb:
    createTables()
