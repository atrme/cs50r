load("zelda.RData")

zelda <- group_by(zelda, year) |>
  summarize(releases=n()) |>
  arrange(desc(releases))

save(zelda, file="2.RData")