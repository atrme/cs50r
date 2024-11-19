calculate_growth_rate <- function(years, visitors) {
  # TODO: Calculate yearly growth of visitors
  diff_visitors <- visitors[length(visitors)] - visitors[1]
  diff_years <- years[length(years)] - years[1]
  
  growth_rate <- diff_visitors / diff_years
}

predict_visitors <- function(years, visitors, year) {
  # TODO: Predict visitors in given year
  latest_year <- years[length(years)]
  latest_visitors <- visitors[length(visitors)]
  
  result <- latest_visitors + (year - latest_year) * calculate_growth_rate(years, visitors)
}

visitors <- read.csv("visitors.csv")
year <- as.integer(readline("Year: "))
predicted_visitors <- predict_visitors(visitors$year, visitors$visitors, year)
cat(paste0(predicted_visitors, " million visitors\n"))
