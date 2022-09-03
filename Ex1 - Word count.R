#Word count of "Gandalf" in "The Hobbit Chapter 1" (text is downloaded into the 
#/Downloads folder)


#1. Import the text into R
text_v <- scan("C:/Users/chris/Downloads/thehobbit.txt", what = "character", sep = "")
text_v

#2. See how long the text is (how many words occur in the text).
length(text_v)

#3. Make all letters lowercase (why?), turn the vector into a list variable, and use class 
#command to check that it is indeed a list
novel_lower_v <- tolower(text_v)
hobbit_word_l <- strsplit(novel_lower_v, "\\W")
class(hobbit_word_l)

#4. Turn the list back into a vector
hobbit_word_v <- unlist(hobbit_word_l)
str(hobbit_word_l)
#We just checked what the hobbit_word_v looks like and there are a lot of tokens
#that are just blank spaces. Therefore...

#5. Get rid of blank spaces.
not_blanks_v <- which(hobbit_word_v !="")
hobbit_word_v <- hobbit_word_v[not_blanks_v]
hobbit_word_v

#Do word count for "gandalf"
hobbit_word_v[1:10]
length(hobbit_word_v[which(hobbit_word_v == "gandalf")])
length(hobbit_word_v[which(hobbit_word_v == "bilbo")])


