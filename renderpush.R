source("mycred.R")

rmarkdown::render("slides.Rmd")
message("commit")
git2r::commit(message="dev", all=TRUE)
print("push")
git2r::push(credentials=cred)
print("finished")
