

## Instructions

1. Open the R project i.e. the `.Rproj` file.
2. At the console, run the command `renv::dependencies()`.
    - What packages do you see listed as direct dependencies, and what project files depend on which dependency?
3. Take a look at the `presentation.rmd` file.
    - Note that {rmarkdown} was listed as a dependency from this file, but there is not actually a call to the package in the file. Why do you think this is?
4. Run the command `renv::restore()`.
    - What happens?
5. Open the `billboard_100.R` file, and run the code. This should create the `top_billboard_rankings.rds` file, needed in the next step.
6. Try to render the `presentation.rmd` file.
    - What happens?
