

### SCRATCH AREA BELOW HERE ###################################################

# fixed up the weird parts -- this works now (orrigie in same folder)
# read.table("datasets/orly_owl_Lin_4p_5_flat_512fixed.txt", header=FALSE, sep=" ")

# CHEQUE OUT DIS GUY: model.tables()

# func idea from here: http://stackoverflow.com/questions/15519882/isolate-the-significance-column-from-summaryaov-in-r
# get_stars_STACKOVERFLOW <- function(p) {
#   stars <- findInterval(p, c(0, 0.001, 0.01, 0.05, 0.1))
#   codes <- c("***" , "**","*", ".", "n.s.")
#   return(codes[stars])
# }


## Label construction:
# y <- stats::rnorm(100)
# table(cut(y, breaks = pi/3*(-3:3)))
# table(cut(y, breaks = pi/3*(-3:3), dig.lab = 4))

# simpler version w/o function
# mob_coef$` ` <- ifelse(mob_coef$`p-value` < .05, "*", "n.s.")
