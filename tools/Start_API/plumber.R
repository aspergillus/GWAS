library(plumber)

#* @get /Query 

simplequery <- function(query=""){
  print(query)
  library(gwasrapidd)
  studies <- get_studies(efo_trait = query) 
  
  associations <- get_associations(efo_trait = query)
  
  variants <- get_variants(efo_trait = query)
  
  traits <- get_traits(efo_trait = query)
  
  paste("Studies: ", n(studies), ",Associations: ", n(associations), ",Variants: ", n(variants), ",Traits: ", n(traits))
  
}
simplequery()