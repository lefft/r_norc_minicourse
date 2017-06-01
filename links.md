

###### june 1 additions (not on site yet)

- [official R manual](https://cran.r-project.org/doc/manuals/R-intro.pdf) -- by the benevolent overlords of the R Core Team
- [rseek.org](http://rseek.org/) -- a custom R-centric google-based search engine
- [quick R](http://www.statmethods.net/) -- tons of super useful resources. here's the author's description of the site: "*I created this website for both current R users, and experienced users of other statistical packages (e.g., SAS, SPSS, Stata) who would like to transition to R. My goal is to help you quickly access this language in your work.*"
- [a note on the R learning curve](http://www.statmethods.net/about/learningcurve.html) -- the last sentence: "*[I]n the end, however, I believe that you will feel much more intimately in touch with your data and in control of your work. And it's fun!*"
- [scatterplots in `ggplot2::`](https://www.youtube.com/watch?v=PVLB9cURhiA&feature=youtu.be)



###### interactive online R courses (mixed-media)

Bang for your buck, this might be the best approach to learning new R concepts once you have the very basics down (where *your buck* is understood as "your time," since most of them are free). [DataCamp](datacamp.com) is an excellent resource for interactive mini-courses aimed at teaching all kinds of data-science, data-analysis, data-* etc. concepts and techniques. The courses are (in my experience) very current, and are taught by trustworthy researchers or developers. All courses are taught either in R or in Python, so there's plenty to explore. Here's their [catalog of courses taught in R](https://www.datacamp.com/courses/tech:r) (the list often grows!). 

Here is a handful of R courses on DataCamp that I'd *highly* recommend "taking". Everything's at your own pace. If you don't have a bunch of extra time laying around, the best strategy would be to start by working on a course for, say, ten or fifteen minutes every day (or one "lesson" a day). 

- [intermediate R](https://www.datacamp.com/courses/intermediate-r), and a [follow-up course with practice activities](https://www.datacamp.com/courses/intermediate-r-practice) 
- [writing functions in R](https://www.datacamp.com/courses/writing-functions-in-r) -- taught by [Hadley](http://hadley.nz/) and [Charlotte](http://cwick.co.nz/) Wickham
- [data manipulation with `dplyr::`](https://www.datacamp.com/courses/dplyr-data-manipulation-r-tutorial) -- taught by Garrett Grolemund, co-author of [*R for Data Science*](http://r4ds.had.co.nz/)
- data vizualization with `ggplot2::` -- [part 1](https://www.datacamp.com/courses/data-visualization-with-ggplot2-1), [part 2](https://www.datacamp.com/courses/data-visualization-with-ggplot2-2/), and [part 3](https://www.datacamp.com/courses/data-visualization-with-ggplot2-part-3)
- [(web-based) swirl course](https://www.datacamp.com/community/open-courses/r-programming-with-swirl#gs.iCe9LZ4) -- this one starts more-or-less from scratch




###### GSS analysis examples in R

- [analyze the general social survey (gss) with r](http://www.asdfree.com/2012/10/analyze-general-social-survey-gss-with-r.html) -- a NORC-external look at wrangling with public GSS data in R
- [Statistical inference with GSS data](https://rpubs.com/fsmontenegro/infstatgss), also [here](https://rpubs.com/hlo415/209688) and [here](https://rpubs.com/caiomiyashiro/gssStatInf) and [here](https://rpubs.com/tslumley/264497) and [here](https://rpubs.com/website/176941) -- **coursera final project examples**


##### BELOW HERE IS ON SITE OR DECIDED NOT TO BE

Here's a collection of useful or interesting links related to this course and scientific computing in general. If you find something cool, send it to me and I'll put it up! (if I think it's well-written and makes sense for the course trajectory)

###### online resources for learning R via playing with R

* [R-Fiddle!](http://www.r-fiddle.org/#/) -- a web-based R interpreter that you can (and should!) use to practice. some things to know: 
	+ there's no configuration or setup, just a live R session running in the cloud! 
	+ here's a quick example I made, which you can edit and mess around with: [[iris plotting R-Fiddle session](http://www.r-fiddle.org/#/fiddle?id=QquJ7uq7&version=2)]
	+ hit the question mark at the top right for a quick tour
	+ you can type directly into the console, or use the script editor (seems like "run code" runs the entire script, so in order to run things line-by-line just copy them into the console) 
	+ good way to practice making plots (supports base and `ggplot2::`!) 
	+ you can even right-click on a plot you made to save it! 
	+ you can share code easily by hitting **save** in the top-ish left, then copy the url you get from **share** -- a truly excellent and under-utilized way to share quick code snippets. 
	+ *beware*: you can load some but not all packages. better not to try installing them -- just use the available ones. (R-fiddle isn't meant to replace R Studio!)
	+ *beware*: if you get stuck or the interpreter won't stop running, hard-reset the page (cmd+shift+R on mac; ctrl+shift+R on windows)


* [some google dev intro to R video clips](https://www.youtube.com/playlist?list=PLOU2XLYxmsIK9qQfztXeybpHvru-TrqAP) -- these are really excellent. the first week's materials were loosely based on the format of these. even though we have or will cover pretty much everything in these, it's still valuable to watch them to reinforce the concepts (i.e. drill them into your brainz).



###### blog posts 

**note**: some of these are written with a beginner audience in mind, but some of them are decidedly *not*. if there's one that sounds interesting but the code/narrative seems too opaque at this point, try coming back to it after a couple of months of practice -- you'll be able to understand more than you did the first time. 

* [analysis of Trump's tweets, in R](http://varianceexplained.org/r/trump-tweets/) -- this post made the news rounds last year. it's great. you should read the whole thing. Robinson uses `dplyr::` pipe-chains just like we'll start doing in week 3. You should browse this whole blog, it's full of great stuff.

* [text mining and sentiment analysis with R](http://varianceexplained.org/r/yelp-sentiment/) -- another classic from David Robinson (not [this David Robinson](https://en.wikipedia.org/wiki/David_Robinson_(basketball)) aka the Admiral). Has links for background near the top, too.

* [okay, last varianceexplained post](http://varianceexplained.org/r/board-game-simulation/) -- illustrates a nicely-implemented simulation, as a response to a [538 "riddler" puzzle](https://fivethirtyeight.com/features/can-you-survive-this-deadly-board-game/). we'll look at why simulation is useful in the final week of the course.

* [a nice blog post](http://alyssafrazee.com/vectorization.html) on the concept of vectorization in R. if you can understand what's going on in this post by the end of the course, you'll be further along in your R journey than you might think. **warning**: the author uses `=` for assignment instead of `<-`. this can be dangerous and is not recommended, but you'll see it sometimes, for a couple of reasons: (i) across programming languages, `=` is probably the most common assignment operator; and (ii) in R, you can get away with using it for assignment in some contexts (but *not* all). 

* [comparing ggplot2 and base graphics](https://flowingdata.com/2016/03/22/comparing-ggplot2-and-r-base-graphics/) -- very nice blog post from Nathan Yau. check out his site [flowingdata.com](flowingdata.com) for all kinds of cool, interesting, and/or fun content. 







###### videos (various topics related to R and programming)

* R Studio [tips and tricks](https://www.youtube.com/watch?v=kuSQgswZdr8)

* Hadley Wickham [lecture](https://www.youtube.com/watch?v=K-ss_ag2k9E) -- on doing data science in R; also contains nice motivation for the tidyverse (aka "hadleyverse" by the R community)

* Hadley Wickham [2016 Plotcon talk](https://www.youtube.com/watch?v=cU0-NrUxRw4) -- new open viz in R

* very recent (may 2017) Andrew Gelman [talk](https://www.youtube.com/watch?v=cuE9eHSbjNI) -- "Theoretical Statistics is the Theory of Applied Statistics: How to Think About What We Do"

* nice Jenny Bryan [plotcon talk](https://www.youtube.com/watch?v=4MfUCX_KpdE) on `purrr::`, and on using data frames as containers for disparate objects (advanced but useful if you continue working in R)

* "how the internet works in 25 minutes" -- nice talk by Jenna Zeigen [video](https://www.youtube.com/watch?v=yK5G4VnMGpo) and [slides](http://jenna.is/slides/server-farm-to-table-annotated.pdf)

* entertaining talk that i'd characterize as belonging to the genre of "the psychology of programming" [video here](https://www.youtube.com/watch?v=Lv29oYa7ENg) and [slides here](http://jenna.is/slides/rejectjs.pdf). related ones: [here](http://jenna.is/slides/at-jsconfis.pdf)/[here](https://www.youtube.com/watch?v=XNfpnCLbRmc) 



###### comparing R to other languages 

* [comparison of common data operations in R and Python](https://www.dataquest.io/blog/python-vs-r/) -- what it sounds like. will be most useful for those of you who've been exposed to Python e.g. in a university class.

* [tidy data in python](http://www.jeannicholashould.com/tidy-data-in-python.html) -- this will make more sense once we go over the concept of tidy data.

* [profiling a dataset of craft beers](http://www.jeannicholashould.com/profiling-a-dataset-of-craft-beers.html) -- this is in Python, but an excellent exercise would be to reproduce the descriptives using R.



###### fun/useful R functions and packages

these are help pages and vignettes of some cool functions and packages you can play around with. you'll find code examples at the bottom of all R help pages. notation is `packagename::functionname()`. remember, just call `library()` with no arguments to see a list of the packages you have installed. to install a new one, just use `install.packages("packagename")`. (only do that if you don't have a package or if you have an outdated version of a package or if you recently updated R and need to get all your old packages back).

* [`base::Vectorize()` function](https://stat.ethz.ch/R-manual/R-devel/library/base/html/Vectorize.html)

* [`easypackages::` package](https://cran.r-project.org/web/packages/easypackages/README.html) -- I haven't used this, and wouldn't necessarily recommend using it in the long-term, but it might eliminate some headaches and allow you to focus on the interesting stuff while you're starting to learn.
 

* []

* 

