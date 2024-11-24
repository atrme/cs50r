library(stringr)
library(dplyr)
library(ggplot2)


# Read lyrics
lyrics <- readr::read_file("lyrics/robinson.txt")

# Tidy up lyrics
lyrics <- str_replace_all(lyrics, c(","="", "\\."="", "\\?"="", "!"="", "\\("="", "\\)"="", "\n"=" ")) |>
  str_to_lower() |>
  str_trim() |>
  str_squish()

# Turn lyrics into vector of words
words <- str_split(lyrics, " ", simplify = TRUE) |>
  c()

# Calculate frequencies for each word(one-time word filtered)
tb <- data.frame(word = words) |>
  count(word, name = "count") |>
  filter(count > 1)

# Make a plot
p <- ggplot(tb, aes(x=reorder(word, count, decreasing = TRUE), y=count)) +
  geom_col(aes(fill = word), show.legend = FALSE) +
  scale_y_continuous(limits = c(0, 20), expand = c(0, 0)) +
  labs(x="name", y="count", title="frequencies of words in lyrics") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = -45, vjust = 0.7, hjust = 0))

ggsave("lyrics.png", plot = p, width= 2000, height = 1200, units = "px")
