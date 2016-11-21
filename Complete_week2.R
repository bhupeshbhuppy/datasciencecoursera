complete<-function(directory,id=1:332){
  files<-list.files(path = directory, pattern = '.csv$')
  result<- data.frame(ID= numeric(), Nobs=character(), stringsAsFactors = FALSE)
  x<-1
  for(i in id){
    #print(paste(directory,files[i],sep = "\\"))
    dat<-read.csv(paste(directory,files[i],sep = "\\"))
    sumVal<-complete.cases(dat)
    #result<- c(i,sum(sumVal)
    result[x,]<-list(i,sum(sumVal))
    x=x+1
    #result$ID[i]<-i
    #result$Nobs[i]<-sum(sumVal)
    rm(dat)
  }
 # if(result>)
  return(result)
}
