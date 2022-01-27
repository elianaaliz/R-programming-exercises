corr <- function(directory, threshold = 0) {
  ficheros <- list.files(directory, full.names = T)
  
  ret <- integer() #vector("numeric", length = 1) #no muestra el ultimo valor
  
  for(i in ficheros){
    
    f <- read.csv(i)
    if(nrow(f[which(!is.na(f$sulfate) & !is.na(f$nitrate)),]) > threshold)
      ret <- rbind(ret, cor(f$sulfate, f$nitrate, use = 'complete.obs'))
      ret <- ret
  }
  return (ret)
}