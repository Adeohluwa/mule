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
