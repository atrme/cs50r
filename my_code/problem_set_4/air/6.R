load("air.RData")

air <- group_by(air, pollutant) |>
  summarize(emissions=sum(emissions)) |>
  ungroup() |>
  arrange(desc(emissions)) |>
  select(pollutant, emissions)

save(air, file="6.RData")