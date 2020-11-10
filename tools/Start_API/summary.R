library(gwasrapidd)

query <- 'Cancer'

studies <- get_studies(efo_trait = query)
n(studies)
associations <- get_associations(efo_trait = query)
n(associations)
variants <- get_variants(efo_trait = query)
n(variants)
traits <- get_traits(efo_trait = query)
n(traits)


studies <- get_studies(efo_trait = query)
studies
associations <- get_associations(efo_trait = query)
associations
variants <- get_variants(efo_trait = query)
variants
traits <- get_traits(efo_trait = query)
traits



query<-'cancer'

library(plumber)
library(gwasrapidd)
simplequry <- function(){
  studies <- get_studies(efo_trait = query)
  n(studies)
}
simplequry()

#* @apiTitle Plumber API

#* Echo back the input
#* @param query Number of Studies is to echo
#* @get/echo

function(query = "cancer"){
  library(gwasrapidd)
  studies <- get_studies(efo_trait = query)
  n(studies)
}