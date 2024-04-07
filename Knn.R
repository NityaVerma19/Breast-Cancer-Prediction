#-----------------------------ASSINGMENT----------------------------

#a)
data = read.csv("C:\\Users\\DELL\\Downloads\\Breast Cancer Wisconsin.csv")
data
dim(data)  #dimension
str(data)  #data type of each variable


#b)Splitting the data

set.seed(123)
test_size = sample(nrow(data), 100)

data_test = data[test_size, ]

data_train = data[-test_size, ]

#c) 

library(class)
#scaling the data
train_scale = scale(data_train[,3:32])
test_scale = scale(data_test[, 3:32])

knn_model = knn(train_scale, test_scale, cl = data_train$diagnosis, k = 21)
knn_model

confusion_matrix = table(actual = data_test$diagnosis,predict =  knn_model)

#Accuracy = (TP+TN)/(TP+TN_FP+FN)
accuracy = sum(diag(confusion_matrix))/sum(confusion_matrix)
