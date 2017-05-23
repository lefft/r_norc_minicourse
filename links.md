
Here's a collection of useful or interesting links related to this course and scientific computing in general. If you find something cool, send it to me and I'll put it up! (if I think it's well-written and makes sense for the course trajectory)

* [r-fiddle!](http://www.r-fiddle.org/#/) -- a web-based R interpreter that you can (and should!) use to practice. there's no configuration or setup, just a live R session running in the cloud!

* [some google dev intro to R video clips](https://www.youtube.com/playlist?list=PLOU2XLYxmsIK9qQfztXeybpHvru-TrqAP) -- these are really excellent. the first week's materials were loosely based on the format of these. even though we have or will cover pretty much everything in these, it's still valuable to watch them to reinforce the concepts (i.e. drill them into your brainz).

* [a nice blog post](http://alyssafrazee.com/vectorization.html) on the concept of vectorization in R. if you can understand what's going on in this post by the end of the course, you'll be further along in your R journey than you might think. **warning**: the author uses `=` for assignment instead of `<-`. this can be dangerous and is not recommended, but you'll see it sometimes, for a couple of reasons: (i) across programming languages, `=` is probably the most common assignment operator; and (ii) in R, you can get away with using it for assignment in some contexts (but *not* all). 


* [comparison of common data operations in R and Python](https://www.dataquest.io/blog/python-vs-r/) -- what it sounds like. will be most useful for those of you who've been exposed to Python e.g. in a university class.

* [tidy data in python](http://www.jeannicholashould.com/tidy-data-in-python.html) -- this will make more sense once we go over the concept of tidy data.

* [profiling a dataset of craft beers](http://www.jeannicholashould.com/profiling-a-dataset-of-craft-beers.html) -- this is in Python, but an excellent exercise would be to reproduce the descriptives using R.

* [analysis of Trump's tweets, in R](http://varianceexplained.org/r/trump-tweets/) -- this post made the news rounds last year. it's great. you should read the whole thing. Robinson uses `dplyr::` pipe-chains just like we'll start doing in week 3. You should browse this whole blog, it's full of great stuff.


* [text mining and sentiment analysis with R](http://varianceexplained.org/r/yelp-sentiment/) -- another classic from David Robinson (not [this David Robinson](https://en.wikipedia.org/wiki/David_Robinson_(basketball)) aka the Admiral). Has links for background near the top, too.


* [okay, last varianceexplained post](http://varianceexplained.org/r/board-game-simulation/) -- illustrates a nicely-implemented simulation, as a response to a [538 "riddler" puzzle](https://fivethirtyeight.com/features/can-you-survive-this-deadly-board-game/). we'll look at why simulation is useful in the final week of the course.

* nice jenny bryan [plotcon talk](https://www.youtube.com/watch?v=4MfUCX_KpdE) on `purrr::`, and on using data frames as containers for disparate objects (advanced but useful if you continue working in R)

* "how the internet works in 25 minutes" -- nice talk by jenna zeigen [video](https://www.youtube.com/watch?v=yK5G4VnMGpo) and [slides](http://jenna.is/slides/server-farm-to-table-annotated.pdf)

* entertaining talk that i'd characterize as belonging to the genre of "the psychology of programming" [video here](https://www.youtube.com/watch?v=Lv29oYa7ENg) and [slides here](http://jenna.is/slides/rejectjs.pdf). related ones: [here](http://jenna.is/slides/at-jsconfis.pdf)/[here](https://www.youtube.com/watch?v=XNfpnCLbRmc) 

* very recent (may 2017) andrew gelman [talk](https://www.youtube.com/watch?v=cuE9eHSbjNI) -- "Theoretical Statistics is the Theory of Applied Statistics: How to Think About What We Do"

* R Studio [tips and tricks](https://www.youtube.com/watch?v=kuSQgswZdr8)

### fun/useful R functions and packages

these are help pages and vignettes of some cool functions and packages you can play around with. you'll find code examples at the bottom of all R help pages. notation is `packagename::functionname()`. remember, just call `library()` with no arguments to see a list of the packages you have installed. to install a new one, just use `install.packages("packagename")`. (only do that if you don't have a package or if you have an outdated version of a package or if you recently updated R and need to get all your old packages back).

* [`base::Vectorize()` function](https://stat.ethz.ch/R-manual/R-devel/library/base/html/Vectorize.html)

* [`easypackages::` package](https://cran.r-project.org/web/packages/easypackages/README.html) -- I haven't used this, and wouldn't necessarily recommend using it in the long-term, but it might eliminate some headaches and allow you to focus on the interesting stuff while you're starting to learn.
 

* []

* 

