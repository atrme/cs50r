zelda <- read.csv("zelda.csv")

# Separate `year` and `system` apart
release <- str_split(zelda$release, " - ", simplify = TRUE)
zelda$year <- release[, 1] |> as.integer()
zelda$system <- release[, 2]

# Delete column `release`
select(zelda, !c(release))

# Arrange sequence of columns
cols <- c("title", "year", "system", "role", "names")
zelda <- zelda[, cols]

# Tidy data
zelda$role <- str_to_lower(zelda$role)
zelda <- pivot_wider(zelda, names_from=role, values_from=names)

save(zelda, file="zelda.RData")
