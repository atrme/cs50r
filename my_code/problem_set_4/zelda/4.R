load("zelda.RData")

zelda <- filter(zelda, str_detect(producers, "Shigeru Miyamoto")) |>
  group_by(title) |>
  slice_min(year) |>
  ungroup() |>
  arrange(year, title, system)

save(zelda, file="4.RData")