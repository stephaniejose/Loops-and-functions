#(1) Copy the code into a new script and add a print(x) command into the loop
x <- 0          # make a new scalar called x with a value of 0

for(i in 1:10){ # create a for loop that runs 10 times (1 to 10)
  x <- x + i    # within our for loop we are adding the value of i to the value of x
print (x)} #(1,3,6,10,15,21,28,36,45,55)
#by adding print(x) inside the loop R returns the values after adding i to each new value of x

print(x)        # print x

#(2) Try changing the numbers in the for() function (1:10) to numbers of your choosing multiple times. What do you see?
x <- 0          # make a new scalar called x with a value of 0

for(i in 3:8){ 
  x <- x + i   
  print (x)}

print(x)

#(3) Try changing the name of i in the for() function to a name of your choosing and get the loop to run
x <- 0          # make a new scalar called x with a value of 0

for(square in 1:10){ # create a for loop that runs 10 times (1 to 10)
  x <- x + square    # within our for loop we are adding the value of i to the value of square
}

print(x)        # print x

#(4) Make a loop that loops over the numbers 10 to 20, and prints the square of each
for(a in 10:20){
  print (a^2)}

#this is for loops that don't take numeric (integer) vectors
shrek_quote <- c('What', 'are', 'you', 'doing', 'in', 'my', 'swamp')
for(word in shrek_quote){ #the iterator is "word", rather than i
  print(toupper(word)) #toupper converts all the words to uppercase 
}

for(donkey in 1:length(shrek_quote)){
  print(toupper(shrek_quote[donkey]))  
}

#What is the function of each of the following parts?
#(a) donkey = iterator, it tells the code that it will repeat the same operation, and loop through collections
#(b) toupper = uppercase 
#(c) 1:length() = first word of the shrek quote to the very end, the full length of the quote 
#(d) shrek_quote = taking it from the shrek_quote dataframe 
#(e) shrek_quote[donkey] = the words chosen from the "shrek_quote" and has been denoted as donkey 

#SAVING OUTPUTS

#a common requirement from a loop is to save your outputs
#a way to do this is using an output vector
output <- vector() # creates an empty vector that we can fill with values
input <- c('red', 'yellow', 'green', 'blue', 'purple')
for(i in 1:length(input)){
  output[i] <- nchar(input[i]) #"nchar" counts how many characters are in each colour
}
print(output)

words <- vector()
input <- c("buzz","cross","broads","fore","")
for(i in 1:length(input)){
  words[i] <- paste(input[i], "words", sep="")}
print(words)

#CONDITIONAL STATEMENTS
#USING IF

#when the conditional statement of i>5 (i>5 == TRUE!) is true it will print those that are true 
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i > 5){
    print(i)
  }}

numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i < 5 & i %% 1 == 0){ #if you divide the number it should not have any remainders
    print(paste(i, ' is less than five and an integer.', sep = ''))
    }
}

#in the above code it will only print the values that are less than 5 and divisible by 1 to get a remainder of 0 (no decimal points)

#paste() takes multiple elements from the multiple vectors and concatenates them into a single element


nums <- c(11, 22, 33, -0.01, 25, 100000, 7.2, 0.3, -2000, 20, 17, -11, 0)
for(i in nums){
  if(i>15 & i %% 2 == 0){ #any number divided by 2 will give a remainder of 0
    print(paste(i, ' is greater than 5 and divisible by 2.', sep =''))
  } else if(i < 5 & i %% 2 != 0){
    print(paste(i, 'is not divisible 2', sep = ''))
  } else if(i >= 5 & i %% 2 == 0){
    print(paste(i, ' is not greater than or equal to 5'))
  } 
  else{
    print(paste(i, ' is not greater than five or is not divisible by 2.', sep = ''))
  }
}

#USING ELSE
#This can be used to define what code to run if the conditional is FALSE 
#This is used after the initial if() statement

#example
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i < 5 & i %% 1 == 0){
    print(paste(i, ' is less than five and an integer.', sep = ''))
  } else {
    print(paste(i, ' is not less than five or is not an integer (or both!).', sep = ''))
  }
}

#example - this is combining the else() and if() command in the form of else if()
numbers <- c(1, 4, 7, 33, 12.1, 180000,-20.5)
for(i in numbers){
  if(i < 5 & i %% 1 == 0){
    print(paste(i, ' is less than five and an integer.', sep = ''))
  } else if(i < 5 & i %% 1 != 0){
    print(paste(i, ' is not an integer.', sep = ''))
  } else if(i >= 5 & i %% 1 == 0){
    print(paste(i, ' is not less than five.', sep = ''))
  } else {
    print(paste(i, ' is not less than five and is not an integer.', sep = ''))
  }
}

##QUESTIONS 

#(1) Make a for loop that iterates over the numeric vector c(1,1,3,5,8,13,21) and prints the square root of each of the numbers

numbers1 <- c(1,1,3,5,8,13,21)
for (i in numbers1){
  sqrt_number <- sqrt(numbers1)
}

print(sqrt_number)

#(2) create a vector of a quote from your favourite film (each word should be a single element). Loop over the words and print all words that are 4,5 or 6 characters long, print 'no' instead when the words are <4 characters long and print 'harry potter' if they are more than 6 characters long

film_quote <- c('I', 'like', 'sand')
for (a in film_quote){
  if(a == 4 | a == 5 | a == 6){
    print(paste(a, ' is 4, 5 or 6 characters long', sep = ''))
  } else if(a<4){
    print(paste(a, ' no', sep = ''))
  }
  else{(a > 6)
    print(paste(a, 'harry potter', sep = ''))
  }
}