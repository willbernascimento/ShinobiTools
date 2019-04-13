#' Load frequent used packages.
#'
#' If \code(x) do not specified, the package load a list of default packages.
#' @param x A string vector of packages names (optional).
#' @param y Logical.
#' @export load_pkg
#' @return Packages loaded.
#' @examples
#'
load_pkg <- function(x=c(), y=NULL) {
  if(missing(x)){
    default_pkg <- c('dplyr', 'reshape2', 'ggplot2','ggthemes','electionsBR')
  for(i in 1:length(default_pkg)){
    library(default_pkg[i], character.only = T)
    }} else {
      user_pkg = x
      for(i in 1:length(user_pkg)){
        library(user_pkg[i], character.only = T)
      }
  }
}
