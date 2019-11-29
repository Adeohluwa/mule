import norm/postgres

db("localhost","ade","thiskeys7x8c6h9isverylong","mule"):
  type
    UserProfile* = object
      name: string
      pass: string
      avatar: string
      phone: string
      origin: string
      destination: string
      booked: bool
      switch: string 
      earnings: float
      savings: float
    
    Review* = object
      name: string
      rating: int
      comment: string 
    
    Package* = object
      name: string
      photo: string
      weight: string

    Suggestions* = object
      phone: string
      comment: string


when isMainModule:
  withDb:
    createTables()
