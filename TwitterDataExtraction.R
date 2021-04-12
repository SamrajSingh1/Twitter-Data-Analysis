api_key <- "uBgEl597Z0kQxoZDZw8oe9pxS"
api_secret <- "PuUDPlFqyoSoQe9P6lqJ6zCAo8KgsDtrBFw26vgZGXeX5nM4JH"
access_token <- "1365707840887742467-8RxOsv5shk9vwO9HCZRYjgCakhyhlp"
access_token_secret <- "3NG0KLmBKn2ejBZMW6XL8Gkk4MVSzar9IOAjfc19bNOVu"

library(twitteR)
library(base64enc)
library(openssl)
library(httpuv)

setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)


tweets<- searchTwitter("#AatmaNirbharBharat",n=20,lang = "en")
tweets

tweetsdf <- twListToDF(tweets)
write.csv(tweetsdf,file = "C:/Users/HP User/Desktop/Semester_6/Mobile Analytics Lab/AatmaNirbharBharat.csv",row.names = F)
head(AatmaNirbharBharat)

trends<- availableTrendLocations()
head(trends)
trends
r<-getTrends(2295408)
head(r)
world<-getTrends(1)
head(world)

