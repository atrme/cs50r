get_result <- function(country, files){
  for (i in 2020:2024){
    year_filter <- (files$year == i)
    # See whether data of country of a certain year exists
    if (country %in% subset(files, year_filter)$country){
        country_filter <- files$country == country
        vec <- subset(files, year_filter & country_filter)
        result <- calculate_happiness(vec)
        cat(sprintf("%s (%d): %.2f\n", country, i, result))
    }else{
      cat(sprintf("%s (%d): data unavailable\n", country, i))
    }
  }
}

# Calculate happiness given a row of data
calculate_happiness <- function(vec){
  # Add all values between the second column and the second last column
  # Because a `year` column is appended previously
  happiness <- sum(vec[2 : (length(vec)-1)])
}

load_file <- function(){
  # Load all files
  files <- data.frame()
  for (i in 2020:2024){
    path <- sprintf("%d.csv", i)
    file <- read.csv(path)
    # Add a `year` column
    file$year <- i
    
    # Concatenate tables
    files <- rbind(files, file)
  }
  return (files)
}

files <- load_file()

country <- readline("Country: ")

get_result(country, files)