years = matrix(c(1997:2002),nrow = 3,ncol = 2)

stopifnot(exists("years"), is.matrix(years), all(is.numeric(years)), dim(years)==c(3,2),
        !any(is.na(years)),range(years)==c(1997,2002))  
          
          
 