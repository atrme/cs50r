load("air.RData")

air <- group_by(air, level_1, pollutant) |>
  summarize(emissions=sum(emissions)) |>
  rename(source=level_1) |>
  ungroup()

save(air, file="7.RData")