# To run these tests, simply execute `nimble test`.

import unittest
import "../src/routes/api.nim"

test "/api/dp works as expected":
  check add(5,5) == 10
