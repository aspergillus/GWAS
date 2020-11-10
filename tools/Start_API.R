query<-'cancer'

library(gwasrapidd)
simplequry <- function(){
  studies <- get_studies(efo_trait = query)
  n(studies)
}
simplequry()