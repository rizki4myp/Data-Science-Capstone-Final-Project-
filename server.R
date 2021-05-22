suppressWarnings(library(tm))
suppressWarnings(library(stringr))
suppressWarnings(library(shiny))
suppressWarnings(library(shinythemes))



# Load gram4,gram3 & gram2 Data frame files

gram4 <- readRDS("gram4.RData");
gram3 <- readRDS("gram3.RData");
gram2 <- readRDS("gram2.RData");
mesg <<- ""

# Cleaning of user input before predicting the next word

Predict <- function(x) {
    xclean <- removeNumbers(removePunctuation(tolower(x)))
    xs <- strsplit(xclean, " ")[[1]]
    
    
    
    if (length(xs)>= 3) {
        xs <- tail(xs,3)
        if (identical(character(0),head(gram4[gram4$unigram == xs[1] & gram4$gram2 == xs[2] & gram4$gram3 == xs[3], 4],1))){
            Predict(paste(xs[2],xs[3],sep=" "))
        }
        else {mesg <<- "Next word is predicted using 4-gram."; head(gram4[gram4$unigram == xs[1] & gram4$gram2 == xs[2] & gram4$gram3 == xs[3], 4],1)}
    }
    else if (length(xs) == 2){
        xs <- tail(xs,2)
        if (identical(character(0),head(gram3[gram3$unigram == xs[1] & gram3$gram2 == xs[2], 3],1))) {
            Predict(xs[2])
        }
        else {mesg<<- "Next word is predicted using 3-gram."; head(gram3[gram3$unigram == xs[1] & gram3$gram2 == xs[2], 3],1)}
    }
    else if (length(xs) == 1){
        xs <- tail(xs,1)
        if (identical(character(0),head(gram2[gram2$unigram == xs[1], 2],1))) {mesg<<-"No match found. Most common word 'the' is returned."; head("the",1)}
        else {mesg <<- "Next word is predicted using 2-gram."; head(gram2[gram2$unigram == xs[1],2],1)}
    }
}


shinyServer(function(input, output) {
    output$prediction <- renderPrint({
        result <- Predict(input$inputString)
        output$text2 <- renderText({mesg})
        result
    });
    
    output$text1 <- renderText({
        input$inputString});
}
)

# Back Off Algorithm
# Predict the next term of the user input sentence
# 1. For prediction of the next word, gram4 is first used (first three words of gram4 are the last three words of the user provided sentence).
# 2. If no gram4 is found, back off to gram3 (first two words of gram3 are the last two words of the sentence).
# 3. If no gram3 is found, back off to gram2 (first word of gram2 is the last word of the sentence)
# 4. If no gram2 is found, back off to the most common word with highest frequency 'the' is returned.