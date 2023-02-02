x <- list(11,12,13,14)

cat("whole list:")   #show the given text
print(x)

x<-append(x,15) #appends 15 to the existing list x
print(x)
x[[1]] = NULL #remove the first element of the list
print(x)
x[c(5,6,7,8,9,10,11)] = NULL #remove the elements at specified position in list
print(x)
x<-append(x,9)

sorted_x <- lapply(x,sort)
print(sorted_x)

li<-list(c(9,15,1,0,10))
li
li[[1]] = NULL

x <- lapply(x,sort)
x

li <- lapply(li,sort)#sort vector in a list in ascending order
li

li <- lapply(li,sort,decreasing=TRUE)#sort vector in a list in descending order
li

which(li[[1]] == 1)#to check if the element 1 is present in the first vector of the list li

list<- list(1,2,3,4)
list

list <- unlist(list)#to convert a list into a vector
list

list <- sort(list)#sort a list in ascending order
list

list <- sort(list,decreasing = TRUE)#sort a list in descending order
list

count <- length(list)#count the elements in the list
count

my_list <- list(1:5,#to enter the elements from 1 to 5
                c(8, 3, 5, 3, 6),
                9:5)#to enter the elements from 9 to 5
Reduce("+", my_list)# Sum between the corresponding element in the elements of the list

sapply(my_list, sum)#sum within the list element

sum(my_list[[1]])#sum of a vector in the list

#to print the sum of all the odd element in the first element of the list
i=my_list[[1]] %% 2 == 1
my_list[[1]][i]
sum(my_list[[1]][i])

i=my_list[[1]] %% 2 == 0
my_list[[1]][i]
sum(my_list[[1]][i])

