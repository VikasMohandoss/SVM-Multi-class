library(RTextTools)
library(tm)
data[[1]]$text

data[[419]]$screen_name

y = vector("list",length(data))

v1 = c(data[[1]]$text,data[[2]]$text,data[[3]]$text) 
v1


v2= c(data[[1]]$charvec,data[[2]]$charvec,data[[3]]$charvec)
v2




#df <- do.call("rbind", lapply(y, as.data.frame))

m <- data.frame(v1,v2)
#df <- data.frame(data[2])
str(m)
dim(df)
myCorpus <- Corpus(VectorSource(df))
myCorpus
str(data)
str(y)
str(df)
str(USCongress)



doc_matrix <- create_matrix(m$v1, language="english", removeNumbers=TRUE,
                            stemWords=TRUE, removeSparseTerms=.998)

doc_matrix


#doc_matrix <- create_matrix(crude, language="english", removeNumbers=TRUE,
                            stemWords=TRUE, removeSparseTerms=.998)

doc_matrix


container <- create_container(doc_matrix, m$v2, trainSize=1:2500,
                              testSize=2501:2676, virgin=FALSE)

container


SVM <- train_model(container,"SVM")
SVM_CLASSIFY <- classify_model(container, SVM)
analytics <- create_analytics(container,SVM_CLASSIFY)
summary(analytics)
topic_summary <- analytics@label_summary
topic_summary
alg_summary <- analytics@algorithm_summary
ens_summary <-analytics@ensemble_summary
doc_summary <- analytics@document_summary
write.csv(analytics@document_summary, "DocumentSummary1110.csv")
write.csv(analytics@algorithm_summary, "DocumentSummary1111.csv")
write.csv(analytics@ensemble_summary, "DocumentSummary1112.csv")
write.csv(analytics@label_summary, "DocumentSummary1113.csv")
SVM <- cross_validate(container, 10, "SVM")

