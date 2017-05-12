# Code placed in this file fill be executed every time the
      # lesson is started. Any variables created here will show up in
      # the user's working directory and thus be accessible to them
      # throughout the lesson.


# load da pipe :o
library("magrittr")
# load dplyr
library("dplyr")

boosh <- read.csv("boosh.csv")


### example -- causes 'dataset' to be globally avail when start lesson ########
#
# .get_course_path <- function(){
#   tryCatch(swirl:::swirl_courses_dir(),
#            error = function(c) {file.path(find.package("swirl"),"Courses")}
#   )
# }
# #
# dataset <- read.csv(
#   file.path(.get_course_path(), "My_Course", "Lesson_1", "data.csv")
# )
#
###############################################################################