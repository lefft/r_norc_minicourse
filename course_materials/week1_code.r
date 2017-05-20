#'---
#'title: "R mini-course: week 1"
#'author: "timothy leffel  &nbsp;&nbsp;&nbsp;&nbsp; may19/2017"
#'date: ""
#'css: css/notes.css
#'---

#'<hr style="height:2px; background-color: gray; color:gray;"><br>
#'This is a version of the class code that you can look at alongside its output, chunk by chunk. Each week
#'<br><br><br>
#'
#'### 1. Hello, R! 
#'
#'<hr style="height:1px; background-color:lightgray; color:lightgray;">

# welcome to the R mini-course. in keeping with tradition...
print("...an obligatory 'hello, world!'")

# this line is a comment, so R will always ignore it.
# this is a comment too, since it also starts with "#".

# but the next one is a line of real R code, which does some arithmetic:
5 * 3

# we can do all kinds of familiar math operations:
5 * 3 + 1

# 'member "PEMDAS"?? applies here too -- compare the last line to this one:
5 * (3 + 1)

# spaces usually don't matter, but should be used for legibility
5 * 3+1
5*(3+     1)


#'<br><br>
#'
#'### 2. Variables and Assignments 
#'
#'<hr style="height:1px; background-color:lightgray; color:lightgray;">

# usually when we do some math, we want to save the result for future use.
# we can do this by **assigning** a computation to a **variable**
firstvar <- 5 * (3 + 1)

# now 'firstvar' is an **object**. we can see its value by printing it.
# sending `firstvar` to the interpreter is equivalent to `print(firstvar)`
firstvar

# the word "variable" is unfortunately overloaded with meanings.
# here a variable is something like a container, which we can put stuff in.

# this is importantly different from the more common "pointer" semantics
# for variables found in python and most other programming languages. 
# the difference between "container" semantics and "pointer" semantics is 
# illustrated in the week 1 notes.

# we can put basically anything into a variable, and we can call a variable
# pretty much whatever we want (but do avoid special characters besides "_")
myvar <- "boosh!"
myvar

myVar <- 5.5
myVar

# including other variables or computations involving them:
my_var <- myvar
my_var

myvar0 <- myVar / (myVar * 1.5)
myvar0

# when you introduce variables, they'll appear in the environment tab of the 
# top-right pane in R Studio. you can remove variables you're no longer
# using with `rm()`. (this isn't necessary, but it saves space in both 
# your brain and your computer's
rm(myvar)
rm(my_var)
rm(myVar)
rm(myvar0)


#'<br><br>
#'
#'### 3. Vectors 
#'
#'<hr style="height:1px; background-color:lightgray; color:lightgray;">

# R was designed with statistical applications in mind, so naturally there's
# lots of ways to represent collections or sequences of values (e.g. numbers).

# in R, a "vector" is the simplest list-like data structure.
# you can create a vector with the `c()` function (for "concatenate")
myvec <- c(1, 2, 3, 4, 5)
myvec

anothervec <- c(4.5, 4.12, 1.0, 7.99)
anothervec

# vectors can hold elements of any type, but they must all be of the same type.
# to keep things straight in your head, maybe include the data type in the name
myvec_char <- c("a","b","c","d","e")
myvec_char

# if we try the following, R will coerce the numbers into characters:
myvec2 <- c("a","b","c",1,2,3)
myvec2
rm(myvec2)

# you can put vectors or values together with `c()`
longvec <- c(0, myvec, 9, 80, anothervec, 0, NA)

# suppose the only reason we created `myvec` and `anothervec` was to put
# them together with some other stuff, and save that to `longvec`.
# in this case, we can just remove `myvec` and `anothervec`, and use `longvec`
rm(myvec)
rm(anothervec)

longvec

# note also that the whole numbers (**integers**) now have decimals in them.
# this is because R coerced them into "floating-point" numbers, which are a
# computer's decimal-based representation of the real numbers 
# (**doubles** -- you'll learn some cool stuff if you google: 
# "why are floats called 'doubles' in R?", including what a "float" is).


# to see how many elements a vector has, get its `length()`
length(longvec)

# to see what the unique values are, use `unique()` (you'll get a vector back)
unique(longvec)

# a very common operation is to see how many unique values there are:
length(unique(longvec))

# to see a frequency table over a vector, use `table()`
table(longvec)

# note that this works for all kinds of vectors
table(c("a","b","c","b","b","b","a"))
table(c(TRUE, FALSE, FALSE, FALSE, TRUE, FALSE))

# an important but not obvious thing:
# R has a special value called `NA`, which represents missing data.
# by default, `table()` won't tell you about NA's (annoying, ik!).
# so get in the habit of specifying the `useNA` **argument** of `table()`
table(c(1,2,3,2,2,NA,3,NA,NA,1,1))
table(c(1,2,3,2,2,NA,3,NA,NA,1,1), useNA="ifany") # or "always" or "no"

# notice that the structure of this command is:
#     table(VECTOR, useNA=CHARACTERSTRING)

# some terminology:
#   - `table()` is a **function**
#   - `table()` has **argument positions** for a vector and for a string
#   - we provided `table()` with two **arguments**:
#       * a vector
#       * a character string
#   - the second argument position was **named** `useNA`
#   - we used the **argument binding** syntax `useNA="ifany"`


# argument-binding is kind of like variable assignment, but `useNA` doesn't
# become directly available for use after we give it a value.
# this might feel kinda abstract, but i promise the intuition
# will become clearer the further along we get. some arguments -- like `useNA`
# here -- can be thought of as "options" of the function they belong to.

# here's an example that might clarify the concept of argument binding:
round(3.141592653, digits=4)

# `round()` is a commonly used function. it's additionally relevant here 
# because it illustrates an important concept called **vectorization**. 
# many functions in R are vectorized by default, which means that they can
# take an individual value (like the `round()` call above), or they can take 
# a vector of values. in the latter case, the function will apply pointwise 
# to each element of the vector, and then return the resulting values as a 
# vector, with the same length and order as the input:
round(longvec, digits=4)

# as we saw with `table()`, some functions have optional argument positions.
# this is true of `round()` too -- if we don't tell it how many digits to 
# round to, it uses the default of 0. we'll see how this works later.
round(longvec)




# INSERT CONTENT FROM SLIDES + THEN ANNOTATE, STARTING HERE
# INSERT CONTENT FROM SLIDES + THEN ANNOTATE, STARTING HERE
# INSERT CONTENT FROM SLIDES + THEN ANNOTATE, STARTING HERE


"Table Header  | Second Header
------------- | -------------
Table Cell    | Cell 2
Cell 3        | Cell 4
Cell 5        | Cell 6"

# Mathjax is supported, so with latex syntax you can get inline  \(A = \pi
#                                                                  \times r^2 \) or separate maths:
#   
#   \[
#     \begin{aligned}
#     I_{1} &= \int_{0}^{2*\pi} \sin(x)
#     \\
#     I_{2} &= \int_{0}^{2*\pi} \cos(x)
#     \end{aligned}
#     \]

# `rep()` is a simple example of the "DRY" principle in programming 
# ("don't repeat yourself"")





#'<br><br>
#'
#'### 4. Data Frames 
#'
#'<hr style="height:1px; background-color:lightgray; color:lightgray;">







#'<br><br>
#'
#'### 5. INSERT TITLE/CONTENT
#'
#'<hr style="height:1px; background-color:lightgray; color:lightgray;">


#'<br><br>
#'
#'### 6. INSERT TITLE/CONTENT
#'
#'<hr style="height:1px; background-color:lightgray; color:lightgray;">




#'
#'<link rel="stylesheet" type="text/css"
#'href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,400i,700">
#'
#'<link href="https://fonts.googleapis.com/css?family=Roboto+Mono:300,400,500" rel="stylesheet">
#'
#'  <style>
#'body {
#'  padding: 10px;
#'  font-size: 12pt;
#'  font-family: 'Open Sans', sans-serif;
#'}
#'
#'h1 { 
#'  font-size: 20px;
#'  color: DarkGreen;
#'  font-weight: bold;
#'}
#'
#'h2 { 
#'    font-size: 16px;
#'    color: green;
#'}
#'
#'h3 { 
#'  font-size: 24px;
#'  color: green;
#'  font-weight: bold;
#'}
#'
#'code {
#'  font-family: 'Roboto Mono', monospace;
#'  font-size: 14px;
#'}
#'
#'pre {
#'  font-family: 'Roboto Mono', monospace;
#'  font-size: 14px;
#'}
#'
#'</style>
#'

