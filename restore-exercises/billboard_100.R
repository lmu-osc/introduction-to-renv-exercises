

library(dplyr)
library(tidyr)



# Load the data
data("billboard")

head(billboard)

# Create a new column called top_ranking that contains the highest ranking of the song on the billboard chart
# Don't worry about the specifics of the code here! Just a quick example of using a few different packages

top_billboard_ranking <- billboard %>% 
  pivot_longer(wk1:wk76) %>% 
  group_by(track, artist, date.entered) %>% 
  summarize(
    top_ranking = min(value, na.rm = T), 
    weeks_in_top_100 = sum(is.na(value))
    )

head(top_billboard_ranking)

saveRDS(top_billboard_ranking, "top_billboard_ranking.rds")
