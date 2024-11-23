air <- read.csv("air.csv") |>
  tibble()|>
  select(State, State.County, POLLUTANT, Emissions..Tons., contains("LEVEL")) |>
  rename(state=State, county=State.County, pollutant=POLLUTANT, emissions=Emissions..Tons.,
         level_1=SCC.LEVEL.1, level_2=SCC.LEVEL.2, level_3=SCC.LEVEL.3, level_4=SCC.LEVEL.4)

# Convert type `char` to type `double`
air$emissions <- str_remove_all(air$emissions, ",") |>
  as.numeric()

save(air, file="air.RData")