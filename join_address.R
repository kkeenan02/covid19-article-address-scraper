library(readr)
library(dplyr)
article_addresses <- read_csv("article_addresses.csv")
COVID19_COVID_19 <- read_csv("COVID19 - COVID-19.csv")

output <- COVID19_COVID_19 %>%
  left_join(article_addresses, by = c("URL" = "url"))

write_csv(output, "COVID19 - COVID-19-[KK].csv", na = "")
