swidf<-read.csv("courseera_2.csv", header = T)
x<-df$VAL[!is.na(df$VAL)]
z<-df$FES
?read.xlsx
i=0
lapply(x, function(y){
  if(x>=25){
    i=i+1
  }
})
sum(x>=25)




fileURL="http://d396qusza40orc.cloudfront.net/getdata2Fdata2Frestaurants.xml"

doc<-xmlTreeParse("C:/Users/bhupe/Documents/R/getdata_data_restaurants.xml", useInternal=TRUE)

rootNode<-xmlRoot(doc)
secondRootNode<-rootNode[[1]]
x<-xpathSApply(rootNode,"//zipcode",xmlValue)
library(stringr)
sum(str_count(x,"21231"))