#' Load frequent used packages.
#'
#' The package pass two argments x and y. x is a vector with packages that user plan to load. y is a logical vector, where TRUE load a default package list from developer.
#' You need chosse Y TRUE or FALSE. If x do not specified, the package load a list of default packages.
#' @param path String. A path file.
#' @param pattern String. A pattern file like .txt or .csv.
#' @param header Logical. TRUE if the file has a header collum.
#' @export join_text
#' @return A unique file from all files in join.
#' @examples
#' join_text(path='./data/', pattern='.csv', header = T)
#'
#'

join_text <- function(path, pattern, header){
  setwd(path)
  dados1 <- NULL
  arquivos <- dir(pattern = pattern)
  for (i in 1:length(arquivos)) {
    dados <- read.csv(arquivos[i],header = header, sep = ';', dec = ',',quote = "\"",
                      fileEncoding = 'Latin1')
    dados1 <- rbind(dados1, dados)
    print(arquivos[i])
  }
  setwd('..')
  return(dados1)
}
