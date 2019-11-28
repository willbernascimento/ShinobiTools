#' A Set of a custom color pallete
#'
#' The function call an color hex from a intern list. It has five different
#' tones for each color that you can control by the index parameter.
#'
<<<<<<< HEAD
<<<<<<< HEAD
#' @param cor String A color name
#' @param indice Numéric (index) that indicate the color tones. 1 to 5.
=======
<<<<<<< HEAD
#' @param cor String A color name
#' @param indice Numéric (index) that indicate the color tones. 1 to 5.
=======
#' @param colour String A color name
#' @param index Numéric (index) that indicate the color tones. 1 to 5.
>>>>>>> first commit ABKP
>>>>>>> master
=======
#' @param cor String A color name
#' @param indice Numéric (index) that indicate the color tones. 1 to 5.
>>>>>>> origin/master
#'
#' @export minhas_cores
#' @example
#'
#' ## minhas_cores('laranja', 3)
#'


<<<<<<< HEAD
<<<<<<< HEAD
minhas_cores <- function(cor, indice){
=======
<<<<<<< HEAD
minhas_cores <- function(cor, indice){
=======
my_colors <- function(colour, index){
>>>>>>> first commit ABKP
>>>>>>> master
=======
minhas_cores <- function(cor, indice){
>>>>>>> origin/master
  laranja <- data.frame(laranja=c('#FFE569', '#F7BE3E', '#F6A20F','#E26A01', '#D71E00'),
#           row.names = c(),
           stringsAsFactors = F)
  azul <- data.frame(azul = c('#298FC2', '#3b5998','#0c4c8a','#333D79', '#003366'),
#                   row.names = c(),
                   stringsAsFactors = F)
  cinza <- data.frame(cinza = c('#D3D3D3','#BEBEBE', '#757575', '#878787', '#666666'),
#                   row.names = c(),
                   stringsAsFactors = F)

  lista_cores <- ls()

  if(cor %in% lista_cores){
    x = get(cor)
    cor_sel = x[indice,paste0(cor)]
  return(cor_sel)
}
}

