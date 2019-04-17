

joing_text <- function(path, pattern, header){
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
