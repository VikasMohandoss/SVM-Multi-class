setwd("F:/MP/Vik/")
library(rjson)
data <- fromJSON(file="F:/MP/Vik/all_tweets2.json", method='C')
#rating = array[length(data$Data)]
data[[1]]$screen_name

length(data)
rating = vector("list",length(data))
#for(n in 1:length(data))
{
  
  #rating[n] = data$Data[[n]]$Rating
  #date[n] = data$Data[[n]]$Date
#  print(x[[n]]$rating)
#}
  #v1 = vector("list",length(data))
  v1=c()
  v2=c()
  for (v in data)
    v1 = c(v1,v$text)
  #v2 = vector("list",length(data))
  for (v in data)
    v2 = c(v2,v$charvec)
  v1[4]
  #sp <- "a1~!@#$%^&*(){}_+:\"<>?,./;'[]-="
  dat2 <- unlist(strsplit(v1, split=", "))
  v1[2607]
  v1[2607]=iconv(v1[2607], "UTF-8", "ASCII", sub="")
  v1[2607]
  v1[1]
  v1[1]=iconv(v1[1], "UTF-8", "ASCII", sub="")
  v1[1]
  for (i in 1:length(v1))
  {
  # print(i);
   
    v1[i]=iconv(v1[i], "UTF-8", "ASCII", sub="")
    #v1[i]=gsub("[^\x1F-\x7F]+", "", v1[i])
   print(v1[i])
  }
  

  for(i in 1:10)
  {
    print(i)
  }
  
  
v1
data


v1 <- c(data[[1]]$text,data[[2]]$text)
v2 <- c(data[[1]]$date,data[[2]]$date)

vikas <- c(v1,v2)
vikas

data(vikas)
