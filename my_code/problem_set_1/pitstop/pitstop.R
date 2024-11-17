# Load file
file <- readline("Please input the name of a file: ")
table <- read.csv(file)

# Get values wanted
times <- as.double(table$time)
max_time <- max(times)
min_time <- min(times)
sum_time <- sum(times)

# Print out the values
print(paste(
  "there were",
  nrow(table),
  "pit stops, with the shortest being",
  min_time,
  "seconds and the longest being",
  max_time,
  "seconds. The total time spent on pit stops was",
  sum_time,
  "seconds."
))