new_mean <- function(x) {
	n<-length(x)
	mean_value<-sum(x)/n
	return(mean_value)
}


x<- c(1,2,3,4,5)

new_mean(x)

#Creating a function called square;
#Restarting R here;

# start out with a number to test
x <- 3
# you'll want your function to return this number
x^2
square <- function(x) {
	sq<-x*x
	return(sq)
}
# test it out
square(x)
square(53)
53^2 # does this match?

square(100)


add_two_numbers<-function(a,b) {
	added<-a+b
	return(added)
}

add_two_numbers(4,6)
add_two_numbers(100,50)



#Returning a sentence

add_two_numbers2<-function(a,b) {
	added<-a+b
	sentence<-paste("The result is", added)
	return(sentence)
}

add_two_numbers2(4,6)
add_two_numbers2(100,50)


#Practicing with creating defaults

raise <- function(x, power) {

	raised<-x^power
	return(raised)

}

# test with
raise(x = 2, power = 4)
#OR
raise(2,4)
# should give you
2^4


#Making two the default
raise <- function(x, power=2) {

	raised<-x^power
	return(raised)

}
# test
raise(x = 5)
# should give you
5^2

raise(9)
raise(9, power=3) #default is 2, but to change the exponent you need to specify the value



#Create a function that takes a vector of numbers and returns the
#standard deviation manually (like we did the mean). Use if statements
#to check if the vector has only one (or fewer) elements and
#return NA if so. (Hint: the length() function will be helpful!)
#You don’t need any extra arguments besides the vector of numbers.

standard_deviation <- function(x) {

	n <- length(x)
	mean_x<- sum(x) / n
	dev<-x-mean_x
	squares<- (dev)^2
	summation<-sum(squares)
	variance<-summation/(n-1)
	stdev<-sqrt(variance)

	if (n>1){stdev<-stdev}
	else {stdev<-NA}
	return(stdev)

}

#working it out
n <- length(x)
mean_x<- sum(x) / n
dev<-x-mean_x
squares<- (dev)^2
summation<-sum(squares)
variance<-summation/(n-1)
stdev<-sqrt(variance)

return(stdev)

x<-c(100,150,300,600)
n
mean
dev
squares
summation
variance
stdev
#done

#checking

m<-c(400,200,300,500,700)
q<-500

standard_deviation(x)
standard_deviation(m)
standard_deviation(q)

#Modify your function to remove the NA values before calculating
#the standard deviation. (Hint: the na.omit() function will be helpful!)
#Add an argument na.rm = that defaults to TRUE (the opposite of the na.rm
#argument in the built-in R function sd()). If na.rm = FALSE, then the function
#should return NA if there are any NA values in the vector.

standard_deviation2 <- function(x,na.rm = TRUE) {

	if (na.rm){x<-na.omit(x)
	}else {x<-x}

	if (n>1){stdev<-stdev
	}else {stdev<-NA}

	n <- length(x)
	mean_x<- sum(x) / n
	dev<-x-mean_x
	squares<- (dev)^2
	summation<-sum(squares)
	variance<-summation/(n-1)
	stdev<-sqrt(variance)

	return(stdev)

}


standard_deviation2(x)
standard_deviation2(m)
standard_deviation2(q)

#What is the standard deviation of income in (all of) NLSY? Compare with
#the built-in R function sd().

standard_deviation2(nlsy$income)
sd(nlsy$income)
standard_deviation2(nlsy$income, na.rm=FALSE)
sd(nlsy$income, na.rm=TRUE)

