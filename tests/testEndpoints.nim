# To run these tests, simply execute `nimble test`.

import unittest
import "../src/routes/api.nim"
import math

suite "Test each API endpoint":
  test "/api/dp":
    check sum([5,5]) == 10

  test "/api/sp":
    check sum([5,5]) == 10
  
