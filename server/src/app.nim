import jester
import routes/api

routes:
  get "/":
    resp("works!")

  extend endPoints, "/api"

runForever()
