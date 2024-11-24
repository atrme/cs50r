say_ciallo <- function(){
  sensei <- "(∠◠ڼ◠)⌒☆"
  text <- paste0(
    "\t_", strrep("_", str_length("Ciallo~")), "_\n",
    "\t", "|Ciallo~|", "\n",
    "\t/" , strrep("¯", str_length("Ciallo~") + 1) 
  )
  
  paste(text, sensei, "", sep="\n")
}
