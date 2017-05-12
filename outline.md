### R mini-course: blahh title
<hr>

###### NORC, ARC (hyde park office)
###### tim leffel, spring2017 
<hr>

##### summary of course goals

[insert blurb here]

##### summary of course content

[insert blurb here]

##### summary of course format

We'll meet once a week for four consecutive weeks. Each session will be 90min long. There will be on-screen demos and exercises throughout every session, *but* this will only work if everyone actively participates. Bring your computer to class every week. We won't be able to stop mid-class to troubleshoot configuration issues (e.g. "why won't R Studio work?"). These are of course totally normal and expected problems, but we need to get them figured out ahead of time. So *please* make sure you have recent versions of R and R Studio installed, and confirm that you've run the `setup_test.r` script *before* the day of the first session. 

##### schedule + course agenda

###### week 1 

- session topics: programming level 1; overview

topics covered:

	- outline/agenda/goals of course 
	- fundamentals of programming with R, part 1

materials: 

	- link to slides
	- link to everything else

homework: 

	- link to exercises
	- link to reading

###### week 2

- session topics: programming level 2; data cleaning (reshape here or 3??)

materials: 

	- link to slides
	- link to everything else

homework: 

	- link to exercises
	- link to reading


###### week 3

- session topics: programming level 3; plotting/vizualizing data with ggplot2 (and some base graphics)

materials: 

	- link to slides
	- link to everything else

homework: 

	- link to exercises
	- link to reading



###### week 4

- session topics: authoring with Rmarkdown; working with the web

materials: 

	- link to slides
	- link to everything else

homework: 

	- link to exercises
	- link to reading



###### week infinity + beyond!

here's a list of "next steps" topics:

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

###### non-technical/philosophical topics [pre-course post]
	- the process of learning
	- the science of the future
	- the notion of "data" and "big data"
	- open source revolution
	- excel pitfalls (e.g. tab vs comma)
	- put in the time now, it will pay off
	- getting help
	- cheatsheets
	- sometimes do things non-optimally on purpose


###### prereq/meta topics [all week 1]
	- working with files, doc types
	- project dir structures
	- vocabulary
	- ide's and gui's +c
	- the command line
	- directories and files (incl wd)
	- keyboard shortcuts

###### fundamentals of programming with R, part 1 [week 1 + 2a]
	- data types
	- variables
	- functions + arguments
	- assignments + calls + control flow (oh my!)
	- comments comments comments!
	- errors and warnings
	- packages (and libraries)

###### fundamentals of programming with R, part 2 [week 2b]
	- environments (v basic)
	- data structures (esp df)
	- control flow
	- coding style
	- more than one way to skin a cat
	- writing functions

###### working with data in R, part 1 [week 3a]
	- reading data + file i/o
	- data file formats
	- subsetting
	- joining/merging
	- data cleaning/munging 
	- regex
	- summarizing data

###### working with data in R, part 2 [week 3b + 4a]
	- dplyr
	- pipechains via magrittr
	- get data from the web
	- aggregating
	- reshaping
	- plotting
	- the concept of tidy data

###### authoring and rmarkdown [week 4b]
	- aka making nice clean documents really easily
	- calling stuff from other scripts
	- plain-text workflow
	- knitr, rmd to latex
	- (r)markdown
	- reprex/mwe
	- reproducibility and 21st century science
	- git/github



<hr><hr><hr>

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



<hr><hr><hr>

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



<hr><hr><hr>

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

