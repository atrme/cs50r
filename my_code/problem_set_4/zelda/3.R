load("zelda.RData")

zelda <- group_by(zelda, title) |>
  slice_min(year) |>
  ungroup() |>
  arrange(year, title, system)

save(zelda, file="3.RData")