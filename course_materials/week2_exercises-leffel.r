














# **exercise**: 
# use the `%in%` function to see whether the column `mtcars$wt` has any missing values. Note that `%in%` has **infix** syntax like `+`, `-`, `*`, and `/`, so we write `x %in% y` to see if `y` contains `x`. We'll see another useful infix operator below...

# **answer**: 
# x %in% y will return TRUE if x is in y, and FALSE otherwise
# so to see if mtcars$wt has any missing values (NA's), we can say
NA %in% mtcars$wt


# **exercise**: 
# it is *very* important that we checked missing values before rescoding the `am` column in the way that we did. Why? What could happen if the thing we're recoding has missing values in it, but we go ahead and recode it with `ifelse()` anyway? How could we safely recode the column in the presence of missing values? 

# **answer**: 
# if we use ifelse() on something that has missing values in it, we take the 
# risk of ...


