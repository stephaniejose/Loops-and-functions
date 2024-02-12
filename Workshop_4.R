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

month <- function(x){
  y <- grep = month.name, x = month 
  return (y)
}

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
