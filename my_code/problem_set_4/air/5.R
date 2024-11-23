load("air.RData")
air <- group_by(air, county) |>
  arrange(desc(emissions)) |>
  slice_head() |>
  ungroup()
save(air, file="5.RData")