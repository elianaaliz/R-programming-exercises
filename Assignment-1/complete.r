complete <- function(directory, id = 1:332){
  
  ficheros <- list.files(directory, full.names = T)
  
  ret <- data.frame()
  
  for(i in id){
    
    f <- read.csv(ficheros[i])
    numero_obs <- nrow(f[which(!is.na(f$sulfate) & !is.na(f$nitrate)),])
    numero_obs <- c(i, numero_obs)
    ret <- rbind(ret, numero_obs)
  }
  names(ret) <- c('id', '# observaciones')
  return (ret)
}