source("mycred.R")

rmarkdown::render("slides.Rmd")
cat("commit\r")
git2r::commit(message="dev", all=TRUE)
cat("push\r")
git2r::push(credentials=cred)
print("finished")
