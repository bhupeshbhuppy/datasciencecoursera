pollutantmean<-function(directory,pollutant,id= 1:332){
  files<-list.files(path = directory, pattern = '.csv$')
  dat<-read.csv(paste(directory,files[1],sep = "\\"))
  i=2
  for(i in id){
    print(paste(directory,files[i],sep = "\\"))
    #read.csv(paste(directory,files[1],sep = "\\"))
    #do.call(rbind,lapply(paste(directory,files[i],sep = "\\"),read.csv))
    dat<-rbind(dat,read.csv((paste(directory,files[i],sep = "\\"))))
  }
  colMeans(dat[pollutant],na.rm = TRUE)
}