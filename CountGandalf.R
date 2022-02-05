#Using the word count method in ch. 2 of "Text Analysis with R" (Jockers and Thalken)

#Import the text into R
text_v <- scan("C:/Users/chris/Downloads/thehobbit.txt", what = "character", sep = "\n")
text_v

#See how long the text is
length(text_v)

#Make everything lowercase, turn the vector into a list, use class command to 
#confirm that it is indeed a list
novel_lower_v <- tolower(text_v)
hobbit_word_l <- strsplit(novel_lower_v, "\\W")
class(hobbit_word_l)

#Turn the list back into a vector
hobbit_word_v <- unlist(hobbit_word_l)
str(hobbit_word_l)
#We just checked what the hobbit_word_v looks like and there are a lot of tokens
#that are just blank spaces. Get rid of blank spaces.
not_blanks_v <- which(hobbit_word_v !="")
not_blanks_v[1:10]
hobbit_word_v <- hobbit_word_v[not_blanks_v]

#Do word count for "gandalf"
hobbit_word_v[1:10]
length(hobbit_word_v[which(hobbit_word_v == "gandalf")])
