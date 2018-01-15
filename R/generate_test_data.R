
generate_test_data <- function() {
  test_data <- data.frame("person"=c("Bob", "Alice",
                                     "Stephen", "Mary"),
                          "score"=seq(0, 9, 2.5),
                          "age"=round(rnorm(4, 15, 1)),
                          stringsAsFactors = FALSE)
  test_data
}
