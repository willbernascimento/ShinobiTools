#' Join delimited text file.
#'
#' The package pass several commum arguments like read_csv for join multiples
#' text files. You need pass a folder path. The function enters the specified
#' folder and joins all files and returns an object in your R. workspace.
#'
#' @param path String. A path file.
#' @param pattern String. A pattern file like .txt or .csv.
#' @param header Logical. TRUE if the file has a header collum.
#' @param sep String. Set the separator character. ';' is default.
#' @param dec String. Set the decimal indicator. ',' is default.
#' @param quaote Strig. the set of quoting characters. "\"" is dafault.
#' @param enconding String. Set the file enconding. 'UTF-8' is default.
#' @export join_text
#' @return A unique file from all files in join.
#' @examples
#' \dontrun{
#' # Call the function with the path is needed.
#' join_text(path='~/folder/, pattern='.txt', sep=',')
#' }

join_text <- function(path='.', pattern='.csv', header=FALSE, sep=';', dec=',',
                      encoding = "UTF-8"){
  setwd(path)
  dados1 <- NULL
  arquivos <- dir(pattern = pattern)
  for (i in 1:length(arquivos)) {
    dados <- utils::read.csv(arquivos[i],header = header, sep = sep, dec = dec,
                             quote = "\"", fileEncoding = encoding)
    dados1 <- rbind(dados1, dados)
    print(arquivos[i])
  }
  setwd('..')
  return(dados1)
}
