
## Exercise Notes

Restoring a project library from a `renv.lock` file can generally be accomplished in just two steps:

1. Open the RStudio `.RProj` file.
2. Run `renv::init()`.

You could technically complete just these two steps for this exercise, and you would essentially be finished. However, the exercise is designed to help you understand the process of restoring a project library, and to help you see what happens when your project library does not match the required packages laid out in `renv.lock` file.

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
2. At the console, run the command `renv::status()`.
    - What is out of sync and why?
2. At the console, run the command `renv::dependencies()`. For better formatting, you can run `View(renv::dependencies())`.
    - What packages do you see listed as direct dependencies?
    - The `Source` column indicates which files use these packages. Knowing this, can you list the package dependencies by file?
    - *Note: some versions of Quarto/RStudio may present you with the warning message below.* If this occurs, then install the package, and run `renv::dependencies()` again.
      ``` r
      The 'yaml' package is required to parse dependencies within R Markdown files. Consider installing it with install.packages("yaml")." 
      ```
3. Open the `presentation.rmd` file.
    - *Note: RStudio may prompt you to install several packages in a yellow highlighted bar. You can ignore this request. A later step will address this.*
    - {rmarkdown} was listed as a dependency from this file, but there is not actually a call to the package in the file. Why do you think this is?
4. We want to simulate running someone else's analysis *without* first installing the same packages as them: try to Render[^render] the `presentation.rmd` file.
    - **You will be prompted to install some packages in a pop-up window. This is to install the {rmarkdown} package and its dependencies. Accept the prompt.**
    - The {rmarkdown} package and its dependencies should install, but the rendering still fails. Why do you think this is? Take a careful look at the error message, and align it with the content of the `presentation.rmd` file.
5. We will now need to install all R packages required for this exercise. Run the command `renv::init()`.
    - What happens?
    - If prompted with the question "Do you want to proceed? [Y/n]: ", type `Y` and press `Enter`."
6. Open the `billboard_100.R` file, and run the code by pressing the `Source` button near the top right hand corner of the script.
    - This should create the `top_billboard_rankings.rds` file, needed in the next step.
7. Try to render the `presentation.rmd` file.
    - What happens?
8. Close the project `restore-exercises.Rproj`.
    
Congrats! You have restored someone else's project and successfully rendered their analysis.


[^render]: "Rendering" an RMarkdown `.rmd`, Quarto `.qmd`, or similar file simply means you are generating the output file (e.g., `.html`, `.pdf`, etc.) from the source file. In RStudio, you can do this by clicking the "Knit" or "Render" button depending on your file type and version of RStudio.



