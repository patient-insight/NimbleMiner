packageslInstallation <- function(names_of_packages){
  new_packages <- setdiff(names_of_packages,
                          installed.packages()[, "Package"])
  if (length(new_packages))
    install.packages(new_packages, dependencies = TRUE)
  sapply(names_of_packages, require, character.only = TRUE)
}


packages <- c("shiny", "stringi", "data.table", "DT", "shinythemes", "ggplot2",
              "keras", "readr", "shinyTree", "shinyjs", "tm", "xtable", "tau",
              "stopwords", "caret","devtools")
packageslInstallation(packages)

cat('Please, enter the path to the folder with packages rword2vec and wordVectors (for example, on Windows "C:/NimbleMiner/installer" or on Mac "/Users/User1/Documents/NimbleMiner/installer"')
packages_dir <- readLines(con=stdin(),1)


for(pkg in c('rword2vec', 'wordVectors', 'RTextTools')) {
    devtools::install(file.path(packages_dir, pkg))
}
