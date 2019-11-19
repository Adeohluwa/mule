import jester,
  re

router endPoints:
  post re"^\/api/?":
    resp $request.path
  


when isMainModule:
  var app = initJester(endPoints)
  app.serve()
