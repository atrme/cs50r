load("air.RData")

# Choose county "Columbia"
air <- filter(air, county=="OR - Columbia")
save(air, file="3.RData")