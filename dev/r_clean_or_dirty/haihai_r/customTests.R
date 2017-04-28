




boosh_test <- function() {
  try({
    
    answer <- get('my_boosh', globalenv())
    
    t1 <- nrow(answer)==(nrow(boosh)-2)
    t2 <- identical(as.character(unique(answer$fav_color)), 
                    as.character(c("blue", "red", "purple")))
    okee <- all(t1, t2)
  
  }, silent=FALSE)
  
  exists("okee") && isTRUE(okee)
}



test_func <- function() {
  # Most of this test is wrapped within `try()` so that any error in the
  # student's implementation of `my_mean` doesn't interrupt swirl.
  try({
    # The `get` function retrieves the student's definition of `my_mean` and
    # assigns it to the variable `func`.
    func <- get('my_mean', globalenv())
    
    # The behavior of `func` is then tested by comparing it to the behavior of
    # `mean`.
    t1 <- identical(func(9), mean(9))
    t2 <- identical(func(1:10), mean(1:10))
    t3 <- identical(func(c(-5, -2, 4, 10)), mean(c(-5, -2, 4, 10)))
    ok <- all(t1, t2, t3)
  }, silent = TRUE)
  
  # This value is returned at the result of the answer test.
  exists('ok') && isTRUE(ok)
}

