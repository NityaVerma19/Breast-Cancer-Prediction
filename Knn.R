#-----------------------------ASSINGMENT----------------------------

#a)
data = read.csv("C:\\Users\\DELL\\Downloads\\Breast Cancer Wisconsin.csv")
data
dim(data)  #dimension
str(data)  #data type of each variable


#b)Splitting the data

set.seed(123)
test_size <- sample(nrow(data), 100)

data_test <- data[test_size, ]

data_train <- data[-test_size, ]
