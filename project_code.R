data <-  read.csv("~/Desktop/STA141/Project/Input/gender.csv")
test <- data[,1:2] # test data with gender 
train  <- data[,3:ncol(data)]
train$id <- data[,1]

# clean up the data 
clean.text <- function(line){
  tolower(line)
}
pattern <- c("boy", "he", "him")
# count the frequency, use distance based on KNN 
# check the frequency 
# boy he him the row corrsepond to the indices of the data while column is the feature 
# [1] 0 0 3
# grepl("boy",strings)
# testres=grepl("boy",strings)
# sum(testres)