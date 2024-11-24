say <- function(phrase = "hello!"){
  sensei <- "ᕕ(◠ڼ◠)ᕗ" 
  is_chinese <- grepl("[\u4e00-\u9fff]", phrase)
  if (!is_chinese){
    underscore <- "_"
    overscore <- "¯"
  }else{
    underscore <- "＿"
    overscore <- "￣"
  }
  
  text <- paste0(
    "\t_", strrep(underscore, str_length(phrase)), "_\n",
    "\t", "|", phrase, "|", "\n", 
    "\t", "/", strrep(overscore, str_length(phrase)), "¯"
  )
  
  paste(text, sensei, "", sep="\n")
}
