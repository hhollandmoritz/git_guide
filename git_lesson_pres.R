#' ---
#' title: A crash course in version control with git
#' author: Hannah Holland-Moritz
#' date: '`r format(Sys.time(), "%B %d, %Y")`'
#' output: 
#'   beamer_presentation:
#'     theme: "Boadilla"
#' ---
# Git lesson

#+ knitr setup, include=FALSE
# some setup options for outputing markdown files; feel free to ignore these
# These are the default options for this report; more information about options here: https://yihui.name/knitr/options/
knitr::opts_chunk$set(eval = TRUE, # evaluate code chunks
                      include = TRUE, # include the console output of the code in the final document
                      echoA = FALSE, # include the code that generated the report in the final report
                      warning = FALSE, # include warnings
                      message = FALSE, # include console messages
                      collapse = TRUE, # Merge code blocks and output blocks, if possible.
                      dpi = 300, # the default figure resolution
                      fig.dim = c(9, 5), # the default figure dimensions
                      out.width = '98%', # the default figure output width
                      out.height = '98%', # the default figure output height
                      cache = TRUE) # save the calculations so that kniting is faster each time. (Sometimes this option can cause issues and images won't reflect the most recent code changes, if this happens, just delete the *_cache folder and reknit the code.)
#+ loading libraries and set seed


set.seed(12345)

#' # The start of your analyses
#'""
#' Anything not prefaced by ```#'``` will be interepreted as R code. 
#' For example: 
plot(cars)