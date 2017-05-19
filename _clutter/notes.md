some google dev [slides](https://www.youtube.com/playlist?list=PLOU2XLYxmsIK9qQfztXeybpHvru-TrqAP)


to do tmrw:

- set of vocab words
- set of functions to establish
- rstudio tour image
- slidify
- add commentary to notes










```{r, include=FALSE}
x <- rnorm(100, mean=5, sd=3)
```


## third slide -- base graphics demo

<table style="width:100%">
<tr>

<td>we can have some code and a plot too!
```{r, eval=FALSE}
# simulate some data
x <- rnorm(100, mean=5, sd=3)

# show a histogram
hist(x)
```
</td>

<td>
```{r, echo=FALSE, fig.show=TRUE}
# show a histogram
hist(x)
```
</td>

</tr>
</table>











## fourth slide -- ggplot2 demo

<table><tr>

<td>v, v nicer graphics w ggplot :o

```{r, echo=TRUE, eval=FALSE}
# load ggplot2 for nice graphics
library("ggplot2")

# set the plot theme as desired
theme_set(theme_minimal())

# show a ggplot2 histogram 
# (w quickplot function)
qplot(x, bins=8)
```
</td>

<td>
```{r, echo=FALSE}
library("ggplot2")
theme_set(theme_minimal())
qplot(x, bins=8)

```
</td>

</tr></table>






CAN PLOP THIS DIRECTLY INTO R SCRIPT FOR QUICK REPORT STYLING
#'
#'<link rel="stylesheet" type="text/css"
#'href="https://fonts.googleapis.com/css?family=Raleway:300,400,400i,700">
#'
#'<link href="https://fonts.googleapis.com/css?family=Roboto+Mono:300,400,500" rel="stylesheet">
#'
#'  <style>
#'body {
#'  padding: 10px;
#'  font-size: 12pt;
#'  font-family: 'Raleway', sans-serif;
#'}
#'
#'h1 { 
#'    font-size: 20px;
#'  font-weight:  lighter;
#'  color: DarkGreen;
#'}
#'
#'h2 { 
#'    font-size: 16px;
#'  color: green;
#'}
#'
#'h3 { 
#'    font-size: 14px;
#'  color: green;
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










###### week infinity + beyond -- "next steps" topics
	- simulationz!
	- the hadleyverse/tidyverse
	- functional vs obj oriented
	- just read advanced r!
	- integration w python + julia
	- automating your workflow
	- bare-bones web development 
	- cloud computing
	- interactive visualization
	- vectorization and the `*apply` family
	- git/github
	- knitr, rmd/rnw to latex
	- environments

###### non-technical/philosophical topics 
	- frustration and the learning process 
	- the future of science and the science of the future
	- the notion of "data" and "big data"
	- open source revolution
	- excel pitfalls (e.g. tab vs comma)
	- put in the time now, it will pay off
	- getting help
	- cran task views
	- cheatsheets
	- vocab glossary
	- sometimes do things non-optimally on purpose

###### preliminaries 
	- the command line
	- ide's and gui's +c
	- directories and files (incl wd)
	- working with files, doc types
	- project dir structures
	- keyboard shortcuts

###### fundamentals of R programming, part 1 
	- data types
	- variables
	- functions + arguments
	- assignments + calls + control flow (oh my!)
	- comments comments comments!
	- errors and warnings
	- packages (and libraries)

###### fundamentals of R programming, part 2 
	- environments (v basic)
	- data structures (esp df)
	- control flow
	- coding style
	- more than one way to skin a cat
	- writing functions

###### working with data in R, part 1 
	- reading data + file i/o
	- data file formats
	- subsetting
	- joining/merging
	- modifying w lookup tables
	- data cleaning/munging 
	- regex
	- summarizing data

###### working with data in R, part 2 
	- dplyr
	- pipechains via magrittr
	- get data from the web
	- aggregating
	- reshaping
	- plotting
	- the concept of tidy data

###### document authoring with rmarkdown 
	- aka making nice clean documents really easily
	- calling stuff from other scripts
	- plain-text workflow
	- (r)markdown
	- reprex/mwe
	- reproducibility and 21st century science





<hr><hr>

#### checklist for getting stuff ready

general: 
- [x] look thru ppl's background surveys
- [ ] settle on slides/pres format
- [ ] settle on sessions format
- [ ] settle on exercises format
- [ ] circulate syllabus
- [x] schedule classes

week 1:
- [x] goals/objectives
- [ ] lesson plans
- [ ] datasets/sim funcs
- [ ] script/rmd for session
- [ ] exercises
- [ ] slides

week 2:
- [x] goals/objectives
- [ ] lesson plans
- [ ] datasets/sim funcs
- [ ] script/rmd for session
- [ ] exercises
- [ ] slides

week 3:
- [x] goals/objectives
- [ ] lesson plans
- [ ] datasets/sim funcs
- [ ] script/rmd for session
- [ ] exercises
- [ ] slides

week 4:
- [x] goals/objectives
- [ ] lesson plans
- [ ] datasets/sim funcs
- [ ] script/rmd for session
- [ ] exercises
- [ ] slides









<hr><hr>

#### exercise ideas

1. We toss a fair coin 16 times, how to calculate probability of getting 7 or less tails

```
rbinom(7,prob=0.5,size=16)
dbinom(7,prob=0.5,size=16)
qbinom(7,prob=0.5,size=16)
pbinom(7,prob=0.5,size=16)
```

2. blah

3. ...



<hr><hr>

#### misc notes to self

- for some info/thoughts on slides from rmd source: [demo](http://data-analytics.net/cep/Schedule_files/presentations_demo.html)

- some stat teaching resources [here](http://www.science.smith.edu/~amcnamara/)

- note on 32/64 bit versions (not sent): 

	If installing on NORC machine, check whether you have 32 or 64 bit Windows via Control Panel\System and Security\System (mine is 64, so I assume everyone else's is too) before installing, because it will ask you whether you want to install 32 or 64 bit version (what this means is totally not important for our purposes, just a heads-up! If you're interested in the difference, see here). 

- nice concept from m clark book: "embracing uncertainty but avoiding relativism"

- list of things to hit from m clark's book:
	
	R, Python, Other; IDEs; customize it; coding style; errors as calls for help; I/O; basic object types; boolean; numeric of a kind; factor/categorical; data structures; vectors; matrices/arrays; data frames; indexing; iterative programming; loops/while; aggregation; Other; Naming things; files; variables; data; objects; Documents; Latex or markdown; Version control basics


- nice quote from [guardian](https://www.theguardian.com/environment/climate-consensus-97-per-cent/2014/mar/25/fivethirtyeight-misrepresents-climate-change-research): 
	"Nate Silver's approach works well with politics and sports, but scientists do it better. Photograph: Graeme Robertson"

- nice quote from norman nie about SPSS: 

	"It is all in the rearview mirror. “R is an absolutely massive advancement on the kind of analytics I invented,” he says. “It’s an opportunity to change the game in the fastest-growing field in software.”" [source](https://www.forbes.com/forbes/2010/0524/opinions-software-norman-nie-spss-ideas-opinions.html)

- trend piece on data and programming [here](http://spectrum.ieee.org/computing/software/top-programming-languages-trends-the-rise-of-big-data) and [this?](http://spectrum.ieee.org/static/interactive-the-top-programming-languages-2016)

- LOL: 

```
dat <- read.table('http://www4.stat.ncsu.edu/~stefanski/NSF_Supported/Hidden_Images/orly_owl_files/orly_owl_Lin_4p_5_flat.txt', header = FALSE)
fit <- lm(V1 ~ . - 1, data = dat); plot(predict(fit), resid(fit), pch = '.')
```

- there's only one test! [here](https://www.youtube.com/watch?v=S41zQEshs5k)


- bechdel test "data journalism" thoughts (v good) [here](http://nbviewer.jupyter.org/github/brianckeegan/Bechdel/blob/master/Bechdel_test.ipynb)

- in programming theres not big problems theres just a whole bunch of little problems

- at first its like a foreign language, then its like legos, and eventually it becomes like clay that you can morph into legos on command

- excellent class notes format (dude even had my heart idea!) [algorithms etc. notes here](http://jeffe.cs.illinois.edu/teaching/algorithms/)

- 80pct of data sci is data cleaning, the other 20pct is complaining abt cleaning data



