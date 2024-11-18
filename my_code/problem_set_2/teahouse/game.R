# Build my recommend list
recommends <- matrix(
  c("League of Legends", "Blue Archive", 
    "Black Myth: Wukong", "Minecraft"),
  nrow = 2,
  ncol = 2,
  dimnames = list(c("Fierce", "Casual"), c("Online", "Offline"))
)

# Get requirement
is_online <- readline("Would you like your game to be either online or offline? ")
difficulty <- readline("Would you like the difficulty of the game to be fierce or casual? ")

# Check requirement
if (!(is_online %in% colnames(recommends))){
  cat("Enter \'Online\' or \'Offline\' for your first choice")
}else if(!(difficulty %in% rownames(recommends))){
  cat("Enter \'Fierce\' or \'Casual\' for your second choice")
}else{
  cat(paste("You might like", recommends[difficulty, is_online]))
}