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


