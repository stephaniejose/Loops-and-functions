#WHILE LOOPS
#These loop over a section of code within curly brackets
#instead of giving loops an object to iterate over, they will loop over conditional statements
#they continue to loop over the statement while the staement is TRUE 

#example
x <- 0
while(x < 5){
  x <- x + 1
  print(paste('The number is now ', x, sep = ''))
}

#the code stops running after 5 iterations because the conditional statement is while 'x' is less than 5
#why does x reach a value of 5 and not 4

x <- 1
while(x %% 5 != 0 | x %% 6 != 0 | x %% 7 != 0){
  x <- x + 1
}
print(paste('The lowest number that is a factor of 5, 6, 7 and 8 is ', x, sep = ''))

#the logical statement of "x %% 5 != 0" checks for numbers that is a factor of 5 
#0 divided by any number will always be 0, therefore it cannot be calculated using 0 

#this code will run indefinitely because x will never not be less than 10
x <- 1
while(x < 10){
  x <- x - 1
}

#Make your own loop that takes a starting value of x <- 0.999 that squares x in each loop until x is less than 0.5

x <- 0.999
while(x > 0.5){
  x <- x^2
  print(x)
}

#FUNCTIONS
#BASIC FUNCTIONS

#functions can be used instead of writing the same code each time/copying and pasting
powers <- function(x){
  y <- x ^ 2
  return(y)
}
powers(1) #1

powers(30) #900 #this squares 30 and uses the previous code that was created

powers(5198) #27019204

powers <- function(x){
  y <- x ^ 2
  z <- x ^ 3
  return(c( y, z))
}
powers(1) #1 #1

powers(30) #900 #27000

powers(5189) #26925721 #13971566269

#this creates a function that converts the month into the position it is in the calender years 
month_converter <- function(month){ #this assigns the function the name of month_converter, allowing it to be called later on in the code 
  months <- c('January','February','March', #the c function creates a vector named months which has all the months of the year 
              'April','May','June',
              'July','August','September',
              'October','November','December')
  return(grep(pattern = month, x = months)) #grep searches for the month argument within in the months vector, it returns a vector of indices where the month name is found 
#pattern specifies the search term, and x specifies the vector to search within
}

month <- "August"
numerical_position <- month_converter(month)
print(paste("The numerical position of", month, "is:", numerical_position)) #the paste function is able to put mulitple elements into a string 
#paste0 just means that there will be no spaces as the default separator between elements

month_converter <- function(month_input){ 
  months <- c('January','February','March',
              'April','May','June',
              'July','August','September',
              'October','November','December')
  output <- vector()
  for(i in month_input){
    output[i] <- grep(pattern = i, x = months)
  }
  return(output)
}

months <- "August, May"
numerical_position <- month_converter(month)
print(paste("The numerical position of", month, "is:", numerical_position))

##DEFAULT INPUTS
powers <- function(x, y = 2){ #y has the default value of 2, this means if you don't specify a value for y 
  z <- x ^ y
  return(c(z)) #this returns the calculated value z as a single-element vector. c(z) ensures the output is always a vector, even if you call the function with multiple base numbers in the future
}
powers(3)

powers(3, 3) #this makes the y value as 3 (x = 3, y = 3)

#Write a function that takes a character scalar (e.g. 'bird) and returns a character scalar that appends is the word on the end of the word (e.g. 'Bird is the word')
species <- function(bird){ #this appends the phrase using paste
  word <- paste(bird, "is the word", sep = " ")
  return (word)
}

test_word <- "Bird"
modified_word <- species(test_word)

print(modified_word)

#Edit the above function so that it appends a second input scalar (e.g. 'is not the word'), with the function defaulting to append 'is the word' if no second scalar is provided
species <- function(bird){ #this appends the phrase using paste
  if(bird == "bird" ){
  word <- paste(bird, "is the word", sep = " ")}
  else{
    word <- paste(bird, "is not the word", sep = " ")
  }
  return (word)
} 

result <- species("bird")
print (result)

result <- species("Sparrow") #this comes up as "Sparrow is not the word"
print(result)

##LISTS
#lists can have different types of data inside of it
#you can make lists of plots, models, vectors, dataframes
#the subscripting of a list a double square bracket [[]]
quotes <- list()
quotes[[1]] <- c("We're", 'gonna', 'need', 'a', 'bigger', 'boat.')
quotes[[2]] <- c('Never', 'taken', 'a', 'shortcut', 'before?')

quotes #this prints both quotes
quotes [1] #this only prints the first quote 

#Let's define a function that takes a starting number and generates fibonacci sequence for the first 10 values, if the starting number was the first two values
fib <- function(x){ # define a function called fib that takes an input of x
  sequence <- c(x, x) # create a sequence where the first two values are x
  for(i in 3:10){ # loop over 3 to 10 
    sequence[i] <- sequence[i - 1] + sequence[i - 2] # save each position as the sum of the previous two (in positions 3 to 10)
  }
  return(sequence) # return the sequence
}
fib(1) # this returns the standard fibonacci sequence
#R outputs 1 1 2 3 5 8 13 21 34 55

fib(3)
#3 3 6 9 15 24 39 102 165

#Using a list, we can run the function on the numbers 1:10 saving each of the output vectors
output_list <- list()
for(i in 1:10){
  output_list[[i]] <- fib(i)
}

output_list[4] 

##QUESTION TIME
#Create a new function called powers2() that takes two input scalars (say x and y), that you can assume are positive integers. The function should return a vector of the first scalar to the power of all the positive integers from 1 to the second scalar 
powers2 <- function(x, y) {
  # Create and initialize the result vector
  result <- numeric(y)
  for (i in 1:y) {
    result[i] <- x ^ i  # Efficiently calculate x raised to the power of i
  }
  
  # Return the calculated vector of powers
  return(result)
}

# Example usage
x <- 2
y <- 3

result <- powers2(x, y)
print(result)  # Output: [1, 2, 4]



