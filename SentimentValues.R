rm(list = ls())
library(syuzhet)
hobbit_v <- get_text_as_string(path_to_file = "C://Users//chris//Downloads//thehobbit.txt")
#We get a warning that there's an incomplete final line in the text, but that's OK. It's not an error.
#Just check by printing it out to see that all the info is there.
hobbit_v
#It's all there. 

hobbit_sentences_v <- get_sentences(hobbit_v)
hobbit_sentences_v
hobbit_sentiment_v <- get_sentiment(hobbit_sentences_v)
#Let's print it out to see this hobbit_sentiment 
str(hobbit_sentiment_v)
#According to this above command, the most positive sentence in the first 10 
#sentences is the fourth one, which comes in at 1.75.

plot(hobbit_sentiment_v, 
     type = "l",
     xlab= "Novelistic time",
     ylab = "Sentiment",
     main = "Raw sentiment values in 'The Hobbit'"
     )

#Smooth it out
library(zoo)
hobbit_window <- round(length(hobbit_sentiment_v)*.1)
hobbit_rolled <- rollmean(hobbit_sentiment_v, k = hobbit_window)

hobbit_scaled <- rescale_x_2(hobbit_rolled)
plot(hobbit_scaled$x,
     hobbit_scaled$y,
     type = "l",
     col= "black",
     xlab="Novelistic time",
     ylab = "Sentiment",
     main = "Sentiment values in 'The Hobbit' "
     )





