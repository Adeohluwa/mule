import norm/postgres

db("localhost","ade","s7x8c6h9sixteen","mule"):
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
  try:
    createTables()
  except:
    echo "table already exists..."
