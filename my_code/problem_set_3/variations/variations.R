random_character <- function() {
  # TODO: Return one random letter
  num <- sample(c(0:25))[1]
  ch <- intToUtf8(97+num)
}

print_sequence <- function(length) {
  # TODO: Print a random sequence of specified length
  for(i in 1:20){
    cat(random_character())
    Sys.sleep(0.25)
  }
}

print_sequence(20)