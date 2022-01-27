pollutantmean <- function(directory, pollutant, id = 1:332) {

  #Obtenemos los ficheros csvs
  
  ficheros = list.files(path = directory, pattern = "*.csv") # o simplemente (directory, full.names=T)
  
  dt <- data.frame()

  for(i in id){
    dt <- rbind(dt, read.csv(ficheros[i]))
  }  
  res <- mean(dt[,pollutant], na.rm = T)
  return (res)
}

#Comprobación

pollutantmean("specdata", "sulfate", 1:10)

pollutantmean("specdata", "nitrate", 70:72)

pollutantmean("specdata", "nitrate", 23)

