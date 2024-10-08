
## Instructions

1. Open the R project, `init-snapshot-exercises.Rproj`.
2. Install the {renv} package if needed.
3. Initialize a new project with {renv} with `renv::init()`.
4. Create a new R script in this folder, `init-snapshot-exercises`, called `script.R`.
5. Write code that uses a variety of different packages.
    - Try experimenting with calls to `library()` and namespacing functions e.g. `package::function()`. If you're short on time, there's some example code included below. 
7. Save the script.
8. Run the `renv::dependencies()` function to see the new dependencies of your project.
    - What packages are listed? Is this what you expected?
9. Check the status of your project with `renv::status()`.
    - What do you notice about the results printed to the console?
8. Save these new dependencies to the `renv.lock` file with `renv::snapshot()`.
9. (Optional) Commit your changes to your repository, and push them to GitHub.
    - This should include a new `.Rprofile` file, the `renv.lock` file, and some components of the `renv` folder (`renv/.gitignore`, `renv/activate.R`, `renv/settings.json`).
10. Close the R project.

### Example Code

``` r
library(ggplot2)
library(dplyr)

# Read the iris dataset
data(iris)

# Print the first 6 rows
head(iris)

# Create a scatter plot of Sepal.Length and Sepal.Width
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point()
  
# Perform some data analysis using dplyr
iris %>%
  group_by(Species) %>%
  summarise(mean_sepal_length = mean(Sepal.Length))
  
# Create a linear mixed effects model with {lme4}
lme4::lmer(Sepal.Length ~ Sepal.Width + (1 | Species), data = iris)

```
