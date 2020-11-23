library(plumber)
library(tibble)

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

  
#* @get /GetData

Getdata <- function(of="", query=""){
  print(query)
  print(of)
  library(gwasrapidd)
  
  if (of == "Studies"){
    studies <- get_studies(efo_trait = query)
    studies@studies
  }
  else if (of == "Associations")
  {
    associations <- get_associations(efo_trait = query)
    associations@associations
  }
  else if (of == "Variants")
  {
    variants <- get_variants(efo_trait = query)
    variants@variants
  }
  else{
    traits <- get_traits(efo_trait = query)
    traits@traits
  }
}


