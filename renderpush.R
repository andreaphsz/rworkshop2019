source("mycred.R")

rmarkdown::render("slides.Rmd")
message("commit")
git2r::commit(message="dev", all=TRUE)
message("push")
git2r::push(credentials=cred)
message("finished")
