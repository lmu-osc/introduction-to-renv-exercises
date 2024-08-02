
1. Open the R project i.e. the `.Rproj` file.
2. Initiated {renv}} by running `renv::init()`.
    - Did you receive a notification about the {yaml} package? 
3. Check the identified dependencies by running `renv::dependencies()`.
    - What packages are required and why?
4. Check the status of the dependencies by running `renv::status()`.
    - Is the lock file in-sync with the project library? Why not?
4. Install the identified dependencies by running `renv::restore()`.
5. Open the analysis_doc.qmd