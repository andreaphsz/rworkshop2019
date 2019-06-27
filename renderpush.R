source("mycred.R")

rmarkdown::render("slides.Rmd")
message("committing...")
git2r::commit(message="dev", all=TRUE)
message("pushing...")
git2r::push(credentials=cred)
message("finished!")
