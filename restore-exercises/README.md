

## Instructions

**IMPORTANT**: This exercise expects you have version 4.4.X of R installed. If you have a different version, please install the correct version before starting the exercise. **Step 5 will most likely fail if you have an older version of R installed. You can still read along, and then watch the solution video.**

1. Open the `restore-exercises.Rproj` file.
2. At the console, run the command `renv::dependencies()`. For better formatting, you can run `View(renv::dependencies())`.
    - What packages do you see listed as direct dependencies?
    - The `Source` column indicates which files use these packages. Knowing this, can you list the package dependencies by file?
    - *Note: some older versions of Quarto/RStudio may present you with the following warning message: "The 'yaml' package is required to parse dependencies within R Markdown files. Consider installing it with install.packages("yaml")." If this occurs, then install then install the `yaml` package, and run `renv::dependencies()` again.*
3. Take a look at the `presentation.rmd` file.
    - {rmarkdown} was listed as a dependency from this file, but there is not actually a call to the package in the file. Why do you think this is?
    - *Note: RStudio may prompt you to install the {rmarkdown} package. You can ignore this request. A later step will address this.*
4. Try to Render[^render] the `presentation.rmd` file.
    - What happens? Why did the render fail?
    - *Note: Again, RStudio may prompt you to install packages. You can ignore this request.*
5. Run the command `renv::restore()`.
    - What happens?
6. Open the `billboard_100.R` file, and run the code. This should create the `top_billboard_rankings.rds` file, needed in the next step.
7. Try to render the `presentation.rmd` file.
    - What happens?


[^render]: "Rendering" an RMarkdown `.rmd`, Quarto `.qmd`, or similar file simply means you are generating the output file (e.g., `.html`, `.pdf`, etc.) from the source file. In RStudio, you can do this by clicking the "Knit" or "Render" button depening on your file type and version of RStudio.