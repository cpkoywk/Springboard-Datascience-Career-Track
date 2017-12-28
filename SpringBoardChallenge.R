#Question 1
most_freq_word <- function(phrase) {
  phrase<- gsub('[[:punct:] ]+',' ',phrase)
  split<-strsplit(tolower(phrase), ' ', fixed = FALSE, perl = FALSE, useBytes = FALSE)
  phrtable<-sort(table(split), decreasing=T)
  a<-as.character(names(phrtable)[1])
  return (a)
}

phrase <- "The quick brown fox jumped over the lazy dog. . . ."
cat(most_freq_word(phrase))



#Question 2
non_unique_numbers <- function(phrase) {
  split<-unlist(strsplit(phrase, ' ', fixed = FALSE, perl = FALSE, useBytes = FALSE))
  phrdf<-as.data.frame(table(split))
  remove<-as.character(phrdf[phrdf$Freq==1,1])
  return (paste(split[!split%in% remove], collapse=' '))
}

phrase<-"1 2 3 1 3 4 4"
cat(non_unique_numbers(phrase))
