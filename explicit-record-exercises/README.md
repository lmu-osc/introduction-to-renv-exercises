## Instructions

1. Open the R project i.e. the `.Rproj` file.
2. Initiate {renv} by running `renv::init()`.
3. Check the identified dependencies by running `renv::dependencies()`.
    - What packages are required and why?
4. Check the status of the dependencies by running `renv::status()`.
    - Is the lock file in-sync with the project library? Why not?
4. Install the identified dependencies by running `renv::restore()`.
5. Open the analysis_doc.qmd file and knit it to generate the analysis document.
    - Why did the knitting fail?
    - Check the documentation for the `map_data()` function with `?map_data`.
6. Explicitly record the needed package with `renv::record("package_name")`.
7. Check the status of the dependencies again by running `renv::status()`.
    - What has changed?
8. Install the identified dependencies by running `renv::restore()`.
9. Open the analysis_doc.qmd file and knit it to generate the analysis document.
    - Was it successful this time?
    - Why did you need to explicitly record one of the packages? Take a look at the `DESCRIPTION` file for {ggplot2} to help understand: `packageDescription("ggplot2")`.
