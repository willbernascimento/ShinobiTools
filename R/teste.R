library(ShinobiTools)

load_pkg <- function(x,y){ # take 2 args, y is necessary

  # load x packages listed by the user AND y defaults packages
  if(!missing(x) & y==TRUE){
    user_pkg = x
    def_pkg = c('dplyr', 'reshape2', 'ggplot2','ggthemes','electionsBR')
    all_pkg = c(user_pkg, def_pkg)
    print(all_pkg)
    for(i in 1:length(all_pkg)){
      library(all_pkg[i], character.only = T)}

  # load ONLY X packages listed by user
  }else if (!missing(x) & y==FALSE){
    user_pkg <- x
    for(i in 1:length(user_pkg)){
      library(user_pkg[i], character.only = T)}

  # load ONLY y defaults packages OBS: DO NOT USE X ARG
  } else if(missing(x) & y==TRUE){
    def_pkg = c('dplyr', 'reshape2', 'ggplot2','ggthemes','electionsBR')
    for(i in 1:length(def_pkg)){
      library(def_pkg[i], character.only = T)}

  # print Warning message for incorrect usage.
    }else{
        warning('You need take a look in ?load_pkg')
      break()
      }
}

