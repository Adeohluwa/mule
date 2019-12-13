import os
import dotenv
import norm/postgres

let env  = initDotEnv()
env.load()

let host = getEnv("host")
let dbname = getEnv("db")
let username = getEnv("user")
let password = getEnv("pass")


db(host,username,password,dbname):
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
