##setwd("/Users/ceccarelli/DataSets/")
##table <- read.table(file = "Customer.txt", header = TRUE, sep = "|", fill = TRUE, na.strings = "NA")
##hist(x=table$DiscountPercent,scale="frequency")

##initatilize primes vector to store results into
##initialize looping variable to firt prime number

####QUESTION 1##########

prime.sieve <- function(number, first_prime=2) {
##hold a vector of numbers to check in a variable  
##start at 2 given the above note using the function's default argument
  to_check <- c(first_prime:number) 
  
##initatilize primes variable vector to store results into  
  primes <- NULL
  count <- 0

##initatilize loop variable  
  loop <- first_prime
  while (loop*loop < number) {
    primes <- c(primes, to_check[1])
##remove multiples from to_check vector
    to_check <- subset(to_check, !to_check %% loop == 0)

## update loop variable with next prime after multiples are removed
    loop <- to_check[1]
    count <- count+1
}
##given the loop stops "prematurely", concatenate remaining primes from to_check vector with primes storage vector 
primes <- c(primes,to_check)

##can comment out these two print lines, for info only
print(paste("Loop executed ", count, " times"))
print(paste("Your number,", number, ", contains ", length(primes), " primes up to it and they are:"))
return(primes)
}


####QUESTION 2##########

pi.compute <- function(random_numbers) {
##initialize x and y vectors based on random_numbers input
  n <-random_numbers
##randomly select n number of uniformly distributed points for x and y based on function input
  x <- runif(n, min = -1, max = 1) 
  y <- runif(n, min = -1, max = 1)
##create a vector to test based on unit circle equation
  eq <- x^2 + y^2

#count the points that are less than or equal to 1
  m <- length(subset(eq, eq<=1))

##ratio of the area of the circle to the area of the square  
  p <- m/n
  pi.estimate <- p*4
  return(pi.estimate)
}

##define a function to compute estimation variance
pi.runner <- function(runs=100,random=1000){
  pi.hold = NULL
  for (i in 1:runs) {
    
##append estimated value of pi in a vector based on number of runs
    pi.hold <- append(pi.hold, pi.compute(random))
  }
  return(pi.hold)
}

#compute various estimation variances based on changing number of runs and random numbers selected
#default
var(pi.runner())
#misc changes to input parameters
var(pi.runner(500))
var(pi.runner(1000))
var(pi.runner(500,10000))
var(pi.runner(1000,10000))


##source: http://mathforum.org/library/drmath/view/51909.html
##source: http://mathfaculty.fullerton.edu/mathews/n2003/montecarlopimod.html