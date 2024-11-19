# Load data from csv files
bus <- read.csv("bus.csv")
rail <- read.csv("rail.csv")
data <- rbind(bus, rail)

# Process data
data$reliability <- data$numerator / data$denominator

# Get inquiry from client
inquiry <- readline("Route: ")

# Output result
if (!(inquiry %in% data$route)){
  cat("Please enter valid route")
}else{
  sub_data <- subset(data, route == inquiry)
  prob_peak <- mean(subset(sub_data, peak == "PEAK")$reliability)
  prob_offpeak <- mean(subset(sub_data, peak == "OFF_PEAK")$reliability)
  cat(sprintf("On time %d%% of the time during peak hours.\n", round(prob_peak * 100)))
  cat(sprintf("On time %d%% of the time during off-peak hours.\n", round(prob_offpeak * 100)))
}