source("mycred.R")

rmarkdown::render("slides.Rmd")
git2r::commit(message="dev", all=TRUE)
git2r::push(credentials=cred)
