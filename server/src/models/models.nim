import norm/postgres

db("localhost","ade","thiskeys7x8c6h9isverylong","mule"):
  type
    UserSchema = object
      name: string
      avatar: string
      phone: string
      origin: string
      destination: string
      booked: bool
      switch: string 
      earnings: float
      savings: float
    
    Feedback = object
      name: string
      rating: int
      comment: string 
    
    Package = object
      name: string
      photo: string
      weight: string

withDb:
  createTables()
