books <- read.csv("books.csv")
authors <- read.csv("authors.csv")


# The writer
# Search for the book written by Mia Morgan
print(subset(books, author == "Mia Morgan")["title"])

# The musician
# Search for a book about music written in 1613
print(subset(books, year == 1613 & topic == "Music")["title"])

# The traveler
# Search for a book written by either Lysandra Silverleaf or Elena Petrova in 1775
filter <- (books$author == "Lysandra Silverleaf" | books$author == "Elena Petrova")
filter <- filter & books$year == 1775
print(subset(books, filter)["title"])

# The painter
# Search for a book about art, which has 200-300 pages and is published in either 1990 or 1992
filter <- books$topic == "Art"
filter <- filter & (books$pages >= 200 & books$pages <= 300)
filter <- filter & (books$year == 1990 | books$year == 1992)
print(subset(books, filter)["title"])

# The scientist
# Search for a book with "Quantum Mechanics" in its title
filter <- grepl("Quantum Mechanics", books$title)
print(subset(books, filter)["title"])

# The teacher
# Search for a book about education published in 1700s, whose author lived in Zenthia
avaialable_authors <- authors[which(authors$hometown == "Zenthia"), "author"]
filter <- books$topic == "Education"
filter <- filter & (books$year >= 1700 & books$year < 1800)
filter <- filter & (books$author %in% avaialable_authors)
print(subset(books, filter)["title"])
