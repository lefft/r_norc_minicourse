# http://stackoverflow.com/questions/44089354/r-compute-a-new-dataframe-column-from-a-function-that-calls-functions
# http://www.r-fiddle.org/#/fiddle?id=MJSqesnD
# editor and console:
# <iframe width='100%' height='300' src='http://www.r-fiddle.org/#/embed?id=MJSqesnD' allowfullscreen='allowfullscreen' frameborder='0'></iframe>
# editor only:
# <iframe width='100%' height='150' src='http://www.r-fiddle.org/#/preview?id=MJSqesnD' allowfullscreen='allowfullscreen' frameborder='0'></iframe>

## I'm trying to compute a new column for a dataframe using a multi-argument function. 
## When that function is simple, everything is fine. When that functions calls another function, things go awry.


### PART 1: The dataset of interest. #####

# The goal is to transform Foo into a new column.
df <- data.frame(
   Year =c(1901,1901,1900,1902),
   Month=c(   2,   1,   2,   1),
   Foo  =c(   1,   2,   3,   4)
)

# This simple multi-arg transform works fine.
Foo2Baz <- function(year, month, foo) {
  return(year + month + foo)
}
df$Baz <- Foo2Baz(df$Year, df$Month, df$Foo)
# Expected Baz column: [1904, 1904, 1905, 1907] 
df$Baz


### PART 2: A lookup table #####

## The more interesting transform that fails is like Foo2Baz above, 
## except it will call another function that looks up 
## a value from some other table.

# First we load a dataframe that backs the lookup operation. It's nice
# to keep as a dataframe, as opposed to matrix, for human inspection
# of cells.
lookup_table <- data.frame(
  Year=c(1900, 1901, 1902),
  Jan =c(  10,   20,   30),
  Feb =c( 100,  200,  200))

# Then we define a function to lookup a cell.
Lookup <- function(year, month) {
  return(lookup_table[
    year - 1899, # converts year to row index
    1 + month    # converts month to column, skipping 'Year'
  ])
}
# We expect a lookup of 1901-Feb to be 200
Lookup(1901, 2)


### PART 3: The transform function that calls a function. #####

# The goal is to transform Foo into new column Bar
# by looking up that case's Year and Month.
Foo2Bar <- function(year, month, foo) {
  return(foo + Lookup(year, month))
}

# We expect case 1 (1901,Feb,Foo=1) to have Bar=201
Foo2Bar(1901,2,1)

# We expect case 4 (1902,Jan,Foo=4) to have Bar=34
Foo2Bar(1902,1,4)


### PART 4: How to compute a new column for Bar? #####

## Seems like we can now compute a Bar column using Foo2Bar just like we 
## used the simpler Foo2Baz:

df$Bar <- Foo2Bar(df$Year, df$Month, df$Foo)
df$Bar


## No column? Instead a matrix where rows and columns look like various 
## inputs we sent to the Lookup() function?!

## I've tried variations with do.call, apply,lapply,sapply and dplyr mutate. 
## I seem to be simply missing something fundamental here.
