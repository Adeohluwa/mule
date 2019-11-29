proc getReview*(): JsonNode =
  var reviews = Feedback.getMany(
    10000,
      cond= &"name='{user}'"
    )
    var revs = lc[each.rating | (each <- reviews),int]
    var avg = sum(revs) / len(revs)
    %*avg
proc createReview*(): JsonNode =
  let newReview  = Feedback(
      name: user,
      rating: review,
      comment: comment
    )
  newReview.insert()
  %*newReview
