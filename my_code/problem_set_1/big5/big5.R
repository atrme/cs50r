# Load data from `tests.csv`
table <- read.table(
  "tests.tsv",
  header = TRUE,
  sep = "\t"
)

# Process column `gender`
table$gender <- factor(table$gender, labels = c("Unanswered", "Male", "Female", "Other"))

# Calculate
extroversion <- (table$E1 + table$E2 + table$E3) / 15
neuroticism <- (table$N1 + table$N2 + table$N3) / 15
agreeableness <- (table$A1 + table$A2 + table$A3) / 15
conscientiousness <- (table$C1 + table$C2 + table$C3) / 15
openness <- (table$O1 + table$O2 + table$O3) / 15

# Add columns
table$extroversion <- as.double(sprintf("%.2f", extroversion))
table$neuroticism <- as.double(sprintf("%.2f", neuroticism))
table$agreeableness <- as.double(sprintf("%.2f", agreeableness))
table$conscientiousness <- as.double(sprintf("%.2f", conscientiousness))
table$openness <- as.double(sprintf("%.2f", openness))

# Output
write.csv(table, "analysis.csv", row.names = FALSE)
