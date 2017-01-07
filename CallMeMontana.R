# Author: Adam L. Rich
# Date:   July 3, 2016
# Description:
#
#   Analyze text file from Project Gutenberg 
#   to see how many words, letters, etc. there are
#


# Setup
library(magrittr)



# Get text
# txt <- readLines('http://self.gutenberg.org/eBooks/WPLBN0001235250-Call-Me-Montana-by-John-Richman.txt')
txt <- readLines('http://www.gutenberg.org/cache/epub/1400/pg1400.txt')
length(txt)
txt[1000:1020]



# Get words
# TODO Remove blanks
words_all <- strsplit(txt, ' ') %>% unlist %>% tolower %>% sort
words_all <- words_all[words_all != '']
words_all <- words_all[words_all != '--']
length(words_all)
head(words_all)


words_1 <- words_all %>% unique
length(words_1)
head(words_1)



# Split into characters
chars_all <- strsplit(words_all, '') %>% unlist
chars_1 <- strsplit(words_1, '') %>% unlist
table(chars_all)


# Restrict to letters
letters_all <- chars_all[chars_all %in% letters]
table(letters_all)
letters_1 <- chars_1[chars_1 %in% letters]



# Quick plot
letters_all %>% table %>% plot
letters_1 %>% table %>% plot



# Restrict to rare letters
rare <- c('j', 'q', 'x', 'z')
rare_all <- chars_all[chars_all %in% rare]
rare_1 <- chars_1[chars_1 %in% rare]



# Show tabulated results
rare_all %>% table %>% plot
rare_1 %>% table %>% plot

rare_all %>% table
rare_1 %>% table







# Look at just Js
montana <- readLines('http://self.gutenberg.org/eBooks/WPLBN0001235250-Call-Me-Montana-by-John-Richman.txt')
dickens <- readLines('http://www.gutenberg.org/cache/epub/1400/pg1400.txt')





