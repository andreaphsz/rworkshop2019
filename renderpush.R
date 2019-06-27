source("mycred.R")

rmarkdown::render("slides.Rmd")
cat("commit")
git2r::commit(message="dev", all=TRUE)
cat("push")
git2r::push(credentials=cred)
cat("finished")
