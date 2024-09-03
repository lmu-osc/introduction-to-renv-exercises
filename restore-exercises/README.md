

## Instructions

**IMPORTANT**: This exercise expects you have version 4.4.X of R installed. If you have a different version, please install the correct version before starting the exercise. **Step 5 will most likely fail if you have an older version of R installed. You can still read along, and then watch the solution video.**

1. Open the `restore-exercises.Rproj` file.
    - Upon opening, you should be greeted with a message similar to this: 
      ``` r
      # Bootstrapping renv 1.0.7 ---------------------------------------------------
      - Downloading renv ... OK
      - Installing renv  ... OK
      
      - Project '~/Desktop/introduction-to-renv-exercises/restore-exercises' loaded. [renv 1.0.7]
      - One or more packages recorded in the lockfile are not installed.
      - Use `renv::status()` for more details.
      ```
2. At the console, run the command `renv::dependencies()`. For better formatting, you can run `View(renv::dependencies())`.
    - What packages do you see listed as direct dependencies?
    - The `Source` column indicates which files use these packages. Knowing this, can you list the package dependencies by file?
    - *Note: some versions of Quarto/RStudio may present you with the following warning message:*
      ``` r
      The 'yaml' package is required to parse dependencies within R Markdown files. Consider installing it with install.packages("yaml")." 
      ```
    - If this occurs, then install the `yaml` package, and run `renv::dependencies()` again.
3. Take a look at the `presentation.rmd` file.
    - {rmarkdown} was listed as a dependency from this file, but there is not actually a call to the package in the file. Why do you think this is?
    - *Note: RStudio may prompt you to install several packages in a yellow highlighted bar. You can ignore this request. A later step will address this.*
4. We want to simulate running someone else's analysis *without* first installing the same packages as them: try to Render[^render] the `presentation.rmd` file.
    - **You will be prompted to install some packages in a pop-up window. This is to install the {rmarkdown} package and its dependencies. Accept the prompt.**
    - The {rmarkdown} package and its dependencies should install, but the rendering still fails. Why do you think this is? Take a careful look at the error message, and align it with the content of the `presentation.rmd` file.
5. We will now need to install all R packages required for this exercise. Run the command `renv::restore()`.
    - What happens?
    - If prompted with the question "Do you want to proceed? [Y/n]: ", type `Y` and press `Enter`."
6. Open the `billboard_100.R` file, and run the code by pressing the `Source` button near the top right hand corner of the script.
    - This should create the `top_billboard_rankings.rds` file, needed in the next step.
7. Try to render the `presentation.rmd` file.
    - What happens?
    
Congrats! You have restored someone else's project and successfully rendered their analysis.


[^render]: "Rendering" an RMarkdown `.rmd`, Quarto `.qmd`, or similar file simply means you are generating the output file (e.g., `.html`, `.pdf`, etc.) from the source file. In RStudio, you can do this by clicking the "Knit" or "Render" button depending on your file type and version of RStudio.



