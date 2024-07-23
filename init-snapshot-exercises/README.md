
# Instructions

1. Create an `.Rproj` in this folder, `init-snapshot-exercises`.
2. Install the {renv} package if needed.
3. Initialize a new project with {renv} with `renv::init()` (if not already done when creating the `.Rproj`).
4. Create a new R script in this folder, `init-snapshot-exercises`, called `script.R`.
5. Write code to read the `iris` dataset and print the first 6 rows, create a scatter plot of `Sepal.Length` and `Sepal.Width` using the `ggplot2` package, and perform an analysis of your choice on the `iris` dataset. (Ideally use another package like {lme4} or {dplyr} to perform data cleaning and analysis.) Example:
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
library(lme4)
lmer(Sepal.Length ~ Sepal.Width + (1 | Species), data = iris)

```
6. Save the script.
7. Run the `renv::dependencies()` function to see the new dependencies of your project. What packages are listed? Is this what you expected?
8. Check the status of your project with `renv::status()`. What do you notice about the results printed to the console?
8. Save these new dependencies to the `renv.lock` file with `renv::snapshot()`.
9. Commit your changes to your repository, and push them to GitHub.
