# kniting one report at a time to an html document
library(knitr)
library(rmarkdown)

# Create knit directory
project.fp <- "/home/hannah/Documents/Fierer_lab/git_guide"
knit.fp <- paste0(project.fp, "/knit")
code.fp <- paste0(project.fp, "/code") # location of your scripts, sometimes this might be different than your projects directory

if (!dir.exists(knit.fp)) {dir.create(knit.fp)}

#### Knitting Part 1: NameOfPart1 ####
if (!file.exists(paste0(knit.fp, "/git_lesson_pres.R"))) {
  file.symlink(from = paste0(project.fp, "/git_lesson_pres.R"),
               to = paste0(knit.fp, "/git_lesson_pres.R"))
}
o = knitr::spin(paste0(knit.fp, "/git_lesson_pres.R"), knit = FALSE)
rmarkdown::render(o, "beamer_presentation")
#### =================================================================================================== ####