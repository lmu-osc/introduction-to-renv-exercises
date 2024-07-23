

# Restoring a Project with {renv}

1. Open the R project i.e. the `.Rproj` file.
2. At the console, run the command `renv::dependencies()`. What packages do you see listed as direct dependencies?
  - Did you receive a notice about the {yaml} package? 
3. Take a look at the `presentation.qmd` file. Note that {rmarkdown} was listed as a dependency from this file, but there is not actually a call to the package in the file. Why do you think this is?
4. Run the command `renv::restore()`. What happens?
5. Open the `billboard.Rmd` file, and run the code. This should create the `top_billboard_rankings.rds` file, needed in the next step.
5. Try to render the `presentation.qmd` file. What happens?