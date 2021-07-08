# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Install Package:           'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

generate_hex <- function(len = 20){
  paste0(sample(c(LETTERS,letters,0:9),size = len, replace = TRUE),collapse = "")
}

new_rmd_comment <- function(){
  id <- generate_hex()
  user <- Sys.info()[["user"]]
  date <- Sys.time()
  text <- paste0("<!--id=",id,";user=",user,";time=",date,";comment=-->")
  rstudioapi::insertText(text = text)
  context <- rstudioapi::getSourceEditorContext()
  new_position <- context$selection[[1]]$range$start
  new_position[[2]] <- new_position[[2]] - 3
  rstudioapi::setCursorPosition(new_position)
}
