
## Instructions

Note that these functions and this approach to recording the packages used in your project is not dependent on the use of an RStudio Project (i.e. using a `.Rproj` file). Although still recommended to use such a project structure, we here illustrate that the `renv::embed()` and `renv::use()` can be used in any R script.

### Embedding

1. Open the `embed_example.R` file
2. Run `renv::dependencies(file.path("introduction-to-renv-exercises", "embed-use-exercises", "embed_example.R"))` at the console. (Note: adjust the path accordingly on your system.)
    - What dependencies are detected?
    - Does this list include all dependencies on the dependency tree? Why or why not?
3. Run `renv::embed(file.path("introduction-to-renv-exercises", "embed-use-exercises", "embed_example.R"))` at the console.
    - What has happened to the `embed_example.R` file?

### Using

1. Open the `use_example.R` file
    - What do you see in the call to `renv::use()`?
2. Run the whole script
    - What happens?
