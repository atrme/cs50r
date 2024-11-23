load("air.RData")
air <- filter(air, county=="OR - Columbia") |>
  arrange(desc(emissions))
save(air, file="4.RData")