# prevent undesired messages + print plots nicely
knitr::opts_chunk$set(
  results="hold", message=FALSE, out.width=450, fig.show="hold"
)
#'

### load dependencies and functions #######################
# === === === === === === 
# 
# pipe-chaining operators
library("magrittr")
# chainable data manipulation operations
library("dplyr")
# the best graphics framework around
library("ggplot2")
#
# define some functions that we'll use below
round_up <- function(x, to=10){
  # round number up to nearest increment of 'to'
  to * (x %/% to + ifelse(x %% to != 0, 1, 0))
}
# === === === === === === 
#'

### simulate some data ####################################
# === === === === === === 
#
# specify number of profs, students, classes
nprof <- 10
nstud <- 100
nclss <- 20
#
# specify num classes taught by profs, taken by students
nteach <- nclss/nprof
ntake  <- 4
#
# create identifiers for profs, studs, classes
prof <- paste0("p", seq_len(nprof))
stud <- paste0("s", seq_len(nstud))
clss <- paste0("c", seq_len(nclss))
#
# assign profs to classes
profclss <- data.frame(
  prof=rep(prof, times=nteach),
  clss=rep(clss, length.out=nprof*nteach), 
  stringsAsFactors=FALSE
)
#
# assign students to classes
studclss <- data.frame(
  # each student, repeated "takes" times
  stud=rep(stud, times=ntake) ,
  # assign students to classes
  clss=c(
    # make sure every student has at least one class
    clss, 
    # randomly assign students to the rest of their classes
    sample(clss, size=(nstud*ntake) -nclss, replace=TRUE, prob=runif(nclss))
  ), 
  stringsAsFactors=FALSE
)
# === === === === === === 
#'

### check and re-simulate data as necessary ###############
# === === === === === === 
#
# since we want our fake data to have certain properties, we'll check
# whether it has them. if it doesn't, we'll re-simulate the relevant bits 
# of it repeatedly until it looks the way we want it to. 
# [this is *not* what we'd do with genuine data, of course!]
#
# check for dupes (dupes = row numbers of studclass that are duplicates)
dupes <- which(duplicated(studclss))
#
# if there are dupes, reassign students to classes until dupes are gone
if (length(dupes) == 0){
  print("no dupes to worry about -- wha are the chances?!")
} else { 
  # assuming we *do* have dupes...
  # initialize counter, to count the number of iterations it takes 
  counter <- 1
  # this keeps looping until length(dupes) == 0, i.e. until dupes are gone
  while (length(dupes) > 0){
    # get a new random value of clss for rows that are dupes
    studclss$clss[dupes] <- sample(clss, size=length(dupes), replace=TRUE)
    # now check what dupes are left (if any)
    dupes <- which(duplicated(studclss))
    # print the iteration number and the number of dupes left
    print(paste0("iteration ",counter,": ",length(dupes)," dupes left"))
    # update the iteration counter
    counter <- counter + 1
  }
  # when while-loop is done running, check that we caught all dupe-enrollments
  studclss %>% group_by(stud) %>% summarize(
    hasdupe=length(clss) != length(unique(clss))
  ) %$% ifelse(
    sum(hasdupe) > 0, paste0("still got ",sum(hasdupe)," dupes!"), "dupes gone!"
  )
}
#
# check get distribution of course loads -- everyone shd have 4 
load_dist <- studclss %>% group_by(stud) %>% 
  summarize(nclss=length(unique(clss))) %$% nclss
#
if (unique(load_dist) != "4") {
  print("woah woah hold up, something is wrong! not everyone has 4 classes :/")
} else {
  print("all good -- everyone has exactly 4 classes. phew :p")
}
# === === === === === === 
#'

### clean, transform, and organize data ###################
# === === === === === === 
#
# compute distribution of class sizes
clss_dist <- studclss %>% group_by(clss) %>% 
  summarize(nstud=length(unique(stud)))
#
# put the class sizes into categories, add as a column
clss_dist$nstud_cat <- cut(
  clss_dist$nstud, breaks=seq(from=0, to=round_up(max(clss_dist$nstud)), by=10)
)
#
# want to combine the prof-class table with the class size table 
# so first check that the columns we'll join by are identical
if (all(sort(unique(clss_dist$clss))==sort(unique(profclss$clss)))){
  print("id column is good to go :)")
} else print("different set of values in id columns :(")
#
#'

# [START HEEEEEEERE] [START HEEEEEEERE] [START HEEEEEEERE] [START HEEEEEEERE]
# [START HEEEEEEERE] [START HEEEEEEERE] [START HEEEEEEERE] [START HEEEEEEERE]

# this sec needs to have:
#   - a reshape command
#   - two diff kinds of joins (or at least 1)
#   - a few dplyr verbs
#   - a pipe chain
#   - go back + forth btwn wide + long (maybe student logicals for each class?)

 
# organize the data into a "tidy" format
# we'll call the dataset we want 'dat'
# 
# we want dat to look like this:
# 
# student  class  professor  class_size  class_size_cat
# 
# 
# there's redundancy here, but in this case it's not inappropriate to have
# 
# first join profs and enrollments by class identifier
dat_prof <- full_join(clss_dist, profclss, by="clss")
head(dat_prof)
# 
# then join students and enrollments by class identifier
dat_stud <- full_join(clss_dist, studclss, by="clss")
head(dat_stud)
# 
# 
# === === === === === === 
#'

### compute summary statistics ############################
# === === === === === === 

# compute summaries
# 
# 
# 
# num students per professor
(profstats <- dat_prof %>% group_by(prof) %>% summarize(
  num_stud=sum(nstud), 
  num_clss=length(unique(clss)),
  mean_size=num_stud/num_clss,
  small=min(nstud),
  big=max(nstud)
))
# 
# class sizes per student
(studstats <- dat_stud %>% group_by(stud) %>% summarize(
  num_stud=sum(nstud), 
  num_clss=length(unique(clss)),
  mean_size=num_stud/num_clss,
  small=min(nstud),
  big=max(nstud)
))

### ****save as [csv OR figure/table?!?!]****
#'

### make some exploratory plots ###########################
# === === === === === === 
# 
# sample data for plot demo
plotdat <- data.frame(xvar=1:10, yvar=sample(1:10))
# 
# simple base plot syntax (scatter)
plot(x=plotdat$xvar, y=plotdat$yvar)
# 
# simple ggplot syntax (scatter)
ggplot(data=plotdat, aes(x=xvar, y=yvar)) + geom_point()
# 
# 
# make some plots using base graphics and ggplot2
# first change general appearance of ggplot2 plots via theme_set()
theme_set(theme_bw())
# [can also try: theme_* for * = classic(), minimal(), dark(), void(), etc. ]
# 
# histogram of class sizes
# base graphics:
hist(clss_dist$nstud, breaks=seq(0, 50, by=10))
# ggplot2 graphics:
ggplot(clss_dist) + 
  geom_histogram(aes(x=nstud), breaks=seq(0, 50, by=10))
# 
# density plot of class size
# base graphics:
plot(density(clss_dist$nstud, from=0, to=50))
# ggplot2 graphics:
ggplot(clss_dist) + 
  geom_density(aes(x=nstud)) + 
  scale_x_continuous(limits=c(0,50))
# 
# barplot with students per professor
# base graphics:
barplot(height=profstats$num_stud, names.arg=profstats$prof, 
        main="total students for each professor")
# ggplot2 graphics:
ggplot(profstats, aes(x=prof, y=num_stud)) + 
  geom_bar(stat="identity") +
  labs(title="total students for each professor")
# 
# [NEED TO HIT: FACETING, ERROR BARS, STYLING, GROUPING VARS, SAVING]
# 
# ANOTHER PLOT
# base graphics:
# plot(...)
# ggplot2 graphics:
# ggplot(...)
# 
# FINAL PLOT
# base graphics:
# plot(...)
# ggplot2 graphics:
# ggplot(...)
#'


### fit some statistical models ###########################
# === === === === === === 
#
# still gotta figger aut wha modeling stuff to hit, if any
#'


