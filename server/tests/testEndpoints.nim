# To run these tests, simply execute `nimble test`.

import unittest
import "../src/routes/api.nim"
import math

test "/api/dp":
  check sum([5,5]) == 10

test "/api/sp":
  check sum([5,5]) == 10
  
