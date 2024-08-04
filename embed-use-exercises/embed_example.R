
library(dplyr)
library(ggplot2)
library(gganimate)
library(gapminder)
library(magick)


# https://en.wikipedia.org/wiki/United_Nations_geoscheme_for_Europe

europe <- gapminder %>% 
  filter(continent == 'Europe') %>%
  mutate(europe_region = case_when(
    country %in% c("Denmark", "Estonia", "Finland", "Iceland", "Ireland", "Norway",
                   "Sweden", "United Kingdom") ~ 'Northern Europe',
    country %in% c("Albania", "Bosnia and Herzegovina", "Croatia", "Greece", "Italy",
                   "Montenegro", "Portugal", "Serbia", "Slovenia", "Spain") ~ "Southern Europe",
    country %in% c("Austria", "Belgium", "France", "Germany", "Netherlands", 
                   "Switzerland") ~ 'Western Europe',
    country %in% c("Belarus", "Bulgaria", "Czech Republic", "Hungary", "Poland",
                   "Romania", "Slovak Republic", "Ukraine") ~ 'Eastern Europe',
    TRUE ~ NA_character_
  )) %>%
  dplyr::filter(!is.na(europe_region))


# Adapted from the {gganimate} website

animation <- ggplot(europe, aes(gdpPercap, lifeExp, size = pop, colour = country)) +
  geom_point(alpha = 0.7, show.legend = FALSE) +
  scale_size(range = c(2, 12)) +
  scale_x_log10() +
  facet_wrap(~europe_region) +
  # Here comes the gganimate specific bits
  labs(title = 'Year: {frame_time}', x = 'GDP per capita', y = 'life expectancy') +
  transition_time(year) +
  ease_aes('linear')

animate(animation, nframes = 100, duration = 10, width = 800, height = 600,
        renderer = magick_renderer())
