install.packages("jsonlite")
library(jsonlite)


myquiz = fromJSON("https://raw.githubusercontent.com/CevikYazilimGelistirme-2324/Exercises/main/Week3/example_2.json")


stopifnot(exists("myquiz"), is.list(myquiz)==1, names(myquiz)=="quiz" )

myquiz[[1]]$maths$q1$options = lapply(myquiz[[1]]$maths$q1$options,as.numeric)

stopifnot(all(sapply (myquiz[[1]]$maths$q1$options , is.numeric) ) )




