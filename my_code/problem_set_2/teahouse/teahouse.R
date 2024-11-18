# Build my recommend list
recommends <- matrix(
  c("green tea", "chamomile tea", "black tea", "rooibos tea"),
  ncol = 2,
  nrow = 2,
  dimnames = list(c("Yes", "No"), c("Light", "Bold")) 
)

# Get requirement from customer
flavor <- readline("Flavor: ")
caffeine <- readline("Caffeine: ")

# Deal with illegal input
if (!(flavor %in% colnames(recommends))){
  cat("Enter either \'Light\' or \'Bold\' for flavor")
}else if(!(caffeine %in% rownames(recommends))){
  cat("Enter either \'Yes\' or \'No\' for caffeine")
}else{
  recommend <- recommends[caffeine, flavor]
  cat(paste("You might like", recommend))
}