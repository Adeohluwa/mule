import jester, re

router api:
  extend deliverPackage, "/dp"
  
 #[  
    of "/sp":
      resp sendPackage()
   
    of "/lr":
      resp leaveReview()

    of "/gr":
      resp getReview()

    of "/dph":
      resp displayPhone()

    of "/cb":
      resp cancelBooking()

    of "/cd":
      resp confirmDelivery()

    of "/bu":
      resp bookUser()

    of "/rf":
      resp referFriends()]#
