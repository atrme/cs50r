library(dplyr)
library(stringr)
library(tidyr)
library(ggplot2)

data <- read.csv("data.csv", row.names = 1)

name <- c()
count <- c()

for (i in rownames(data)){
  for (j in colnames(data)){
    name <- append(name, paste(j, i, sep="-"))
    count <- append(count, data[i, j])
  }
}
name <- str_replace_all(name, c("装备"="", "帽子"="hat", "手套"="gloves", "鞋子"="shoes", "包"="bag", "徽章"="badge", "发卡"="hairpin", "护身符"="amulet", "手表"="watch", "项链"="necklace"))

data <- data.frame(name, count)

p <- ggplot(data, aes(x=reorder(name, desc(count)), y=count)) +
  geom_col(aes(fill = "equipment"), show.legend = FALSE)  +
  scale_y_continuous(limits = c(0, (max(count) + 20)), expand = c(0, 0)) +
  labs(x="equipment", y="count", title="equipment stock") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = -90))

ggsave("visualization.png", plot = p, width = 2000, height = 1200, units = "px")
