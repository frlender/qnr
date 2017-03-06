#' pythonic module import function
#'
#' This function allows you to import a R file as a module like in python
#' so that its content won't contaminate your working directory.
#' @param path the path of the R file.
#' @keywords import
#' @export
#' @examples
#' import('xxx.R')
#' import(xxx.R)
#' import('xxx')
#' import(xxx)


import <- function(path){
  such <- new.env()
  path <- as.character(substitute(path))
  if(!grepl('.R',path)){
    path <- paste0(path,'.R')
  }
  source(path,such)
  such
}
