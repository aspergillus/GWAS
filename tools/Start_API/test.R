library(gwasrapidd)
query = 'cancer'
simplequry <- function(){
  variants <- get_variants(efo_trait = query)
  n(variants)
}
simplequry()