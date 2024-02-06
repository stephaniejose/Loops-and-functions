#06/02/2024
#Workshop 3 - Loops and functions 

#Loops allow for something to 'loop' over something many times, repeating a set of code
#for() function is the most common loop

for(i in 1:5){  #this creates a loop that runs 5 times (1 to 5)
  print(i)      # each time the for loop runs, print the value of i
}

#the for() loop above runs through the vector of the values 1 to 5 (1:5)
#each time it rund, it processes the code between the curly brackets {}
#"i" is called the iterable and its value is determined in each loop by the vector we specified (1:5)
#first time: i=1; second time: i=2 etc

x <- 0          # make a new scalar called x with a value of 0

for(i in 1:10){ # create a for loop that runs 10 times (1 to 10)
  x <- x + i    # within our for loop we are adding the value of i to the value of x
}

print(x)        # print x

#in the code above the answer is 55
#we created a variable called x that has a value of 0
#"x" has the value of i added to, each time the loop runs, meaning the value of i becomes 55 from 0

