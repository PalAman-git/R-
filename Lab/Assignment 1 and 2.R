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

L <-list(c(1,4,2,5,7)) #creating a vector inside the list
L
L[[1]] = NULL #clear all the elements in the vector

rm(L) #delete list
L

######################2 Question##########################

#add new entry in D

key <- c(1,2,3,4,5) #entering the keys in dictionary
values <- c(5.6,7.8,6.6,8.7,7.7) #entering the value for keys
df <- data.frame(key,values) #making dictionary provided with keys and values
df
df[nrow(df)+1,] <- c(8,8.8) #adding the entry in the new row after the last row with key 8 and value 8.8

#remove key=2
df <- subset(df,key!=2) #just like telling to take subset where keys is not equal to 2
df

#to check if 6 key is present in D
subset(df,key==6)

#count the number of elements in D
nrow(df)

#to add all the values in D
sum(df$values)

#to update the value of key 3
df$values[df$key == 3] <- 7.1
df

#to clear dictionary
rm(df)
df


#################3 Question#################################

#given 2 sets
s1 <-c(10,20,30,40,50,60)
s2 <-c(40,50,60,70,80,90)

#add 2 elements 55,66 in s1
s1 <- c(s1,55,66)
s1

#remove 10,30 from set1
s1 <- s1[-c(1,3)] #enter the index of the element in the c not the values  #silly mistake
s1

print(40 %in% s1) #check if 40 is present in s1

#to do union of 2 sets
union_set <- union(s1,s2)
union_set

#to do intersection of 2 sets
intersected_sets <- intersect(s1,s2)
intersected_sets

#difference between sets
diff_set <- setdiff(s1,s2)
diff_set


######################4 Question#############################

#to print 100 random strings length between 6 and 8
strings <- sapply(1:100,function(x){
  paste(sample(LETTERS,size = sample(10:15,1)),collapse = "")
})
strings



