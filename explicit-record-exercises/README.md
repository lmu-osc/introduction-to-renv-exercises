## Instructions

1. Open the `explicit-record-exercises.Rproj` project.
2. Check the identified dependencies by running `renv::dependencies()`.
    - What packages are identified as direct dependencies and why?
3. Initiate {renv} by running `renv::init()`.
4. Double-check the status of the dependencies by running `renv::status()`.
    - Is the lock file in-sync with the project library? (Hint: it should be.)
5. Open the `analysis_doc.qmd` file and try to Render the analysis document.
    - Why did the rendering fail?
    - Check the documentation for the `map_data()` function using `?ggplot2::map_data`. What package is still needed?
6. Explicitly record the needed package with `renv::record("package_name")`.
7. Check the status of the dependencies again by running `renv::status()`.
    - What has changed?
8. Install the newly identified dependencies by running `renv::restore()`.
    - If you receive a message that looks like the one below, choose to "Activate the project and use the project library:"
    ```r
    > renv::restore()
    It looks like you've called renv::restore() in a project that hasn't been activated yet.
    How would you like to proceed? 

    1: Activate the project and use the project library.
    2: Do not activate the project and use the current library paths.
    3: Cancel and resolve the situation another way.
    ```
9. Open the `analysis_doc.qmd` file again, and Render the analysis document.
    - Was it successful this time? Why or why not?
10. Why did you need to explicitly record one of the packages to be able to render the document?
    - Take a look at the `DESCRIPTION` file for {ggplot2} to help understand: `packageDescription("ggplot2")`.
<!-- 11. Run `renv::snapshot()`, but type `n` and hit RETURN when prompted with "Do you want to process? (Y/n)?" We don't actually want to complete this step, but we do want to look at the output.
    - What does the output indicate?
    - Why does renv want to remove a package?
12. Add  -->
13. Close the `explicit-record-exercises.Rproj` project.




