proc createReview*(): JsonNode =
  let newReview  = Feedback(
      name: user,
      rating: review,
      comment: comment
    )
  newReview.insert()
  %*newReview
