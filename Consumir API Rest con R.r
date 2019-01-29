install.packages("jsonlite")
require("httr")
Loading required package: httr
require("jsonlite")

base <- "https://graph.facebook.com/v3.0/me?fields=id,name,likes&access_token="
get_likes <- GET(base)
get_likes_text <- content(get_likes,"text")
get_likes_text_json <- fromJSON(get_likes_text,flatten = TRUE)
get_likes_df <- as.data.frame(get_likes_text_json)
View(get_likes_df)
library(readr)
write.csv(get_likes_df,"obtuve mis likes.csv")
