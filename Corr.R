corr<-function(directory,threshold=0){
  files<-list.files(path = directory, pattern = '.csv$')
  result<- data.frame(ID= numeric(), Nobs=character(), stringsAsFactors = FALSE)
  x<-1
  for(i in 1:332){
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
  Ids<-result[result[,"Nobs"]>threshold,]$ID
  corr_vector <- rep(0, length(Ids))
  j<-1
  for(index in Ids ){
    dat1<-read.csv(paste(directory,files[index],sep = "\\"))
    #print(cor(dat1$sulfate,dat1$nitrate, use = "complete.obs"))
    corr_vector[j]<-cor(dat1$nitrate,dat1$sulfate, use = "complete.obs")
    j=j+1
    rm(dat1)
  }
  return(corr_vector)
}