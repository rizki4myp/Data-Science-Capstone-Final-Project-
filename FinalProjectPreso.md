<style>

/* slide titles */
.section .reveal .state-background {
background: white;
}
.section .reveal p {
font-family: Verdana, Arial, Helvetica, sans-serif;
color: black;
text-align:right; width:100%;
line-height: 0.1em;
#margin-top: 70px;
}
.section .reveal h1, .section .reveal h2, .section {
font-family: Verdana, Arial, Helvetica, sans-serif;
color: firebrick ;
margin-top: 0px;
}
.reveal pre code {
	font-family: Verdana, Arial, Helvetica, sans-serif;
  background-color: black;
  color: green;
  font-size: 40px;
  #position: fixed; top: 90%;
  #text-align:center; width:100%;
  }
.reveal h3 { 
  font-size: 65px;
  color: firebrick  ;
}

/* heading for slides with two hashes ## */
.reveal .slides section .slideContent h2 {
   font-size: 37px;
   font-weight: bold;
   color: green;
}

/* ordered and unordered list styles */
.reveal ul, 
.reveal ol {
    font-size: 37px;
    color: black;
    list-style-type: square;
  
  .reveal h1, .reveal h2, .reveal h3 {
  word-wrap: normal;
  -moz-hyphens: none;
  }

</style>
Data Science Specialization Final Project
========================================================
font-family: 'verdana'
transition: rotate
<center>
<img src="JohnsHopkins.jpg" height="150px" style="background-color:transparent; border:0px; box-shadow:none;"></img>
</center>

<span style="color:firebrick; font-weight:bold; font-size:0.9em"> 
How to predict the next word?    
</span>

<span style="color:firebrick; font-weight:bold; font-size:0.5em"> 

Discussion materials

</span>

By: M P

Date: Sat May 22 07:31:24 2021




Objective
========================================================



<span style="color:firebrick; font-weight:bold; font-size:0.7em">

This presentation is just an application, of up to 7 months of work on the Data Science Specialization by Johns Hopkins University. 

The aim of this exercise is to create a product to highlight the prediction algorithm that you have built and to provide an interface that can be accessed by others. 

</span>

Before building the word prediction algorithm...
========================================================
We work on the following:

1. Overview, understanding the problem, and getting the data

2. Exploratory data analysis and modeling

3. Build and evaluate the prediction model

4. Reducing computational runtime and model complexity.


Before building the word prediction algorithm... -(cont'd)
========================================================
After this steps, the result was split into three N-grams files: gram2, gram3
and  gram4 
### How does it work?
<font size="5">
  
<p>In short, the model takes the last few words of a sentence (a 4-gram if four words are used, 3-gram for three words, etc.) and uses statistics based on a large collection of English sentences to find the most probable next word, given that set of sentences.</p> 

<p>
The resulting language model is stored in a set of data files: a file for unigrams, a file for bigrams, etc. The information in these files is similar to the <a href="http://www.speech.sri.com/projects/srilm/manpages/ngram-format.5.html">ARPA format files</a> for n-gram models.
</p>
</font>
  


Instructions
========================================================

For this project we must submit: 


A Shiny app that takes as input a phrase (multiple words) in a text box input and outputs a prediction of the next word.

*[My Shiny App]* -  
<span style="color:firebrick">
[https://rizki4myp.shinyapps.io/datasciencecapstone/]
 </span>






About the Capstone Project
========================================================

The capstone project class allows students to create a usable/ public data product that can be used to showcase your skills to potential employers. Projects will be drawn from real-world problems and will be conducted with industry, government, and academic partners.

For more details: 
<span style="color:firebrick">
[https://www.coursera.org/specializations/jhu-data-science]
 </span>


Shiny Application
========================================================

<span style="color:firebrick; font-weight:bold;font-size:0.7em">
<font size="5">
A Shiny application was developed based on the next word prediction model described previously as shown below. 
###  How to use the application. ###

<ol>
<li> The user enters a partial sentence in the <strong>text input field</strong> on the right.</li>
<li> The <strong>predicted word</strong> appears in black. </li>
</font>
</span>




Shiny Application
========================================================

<span style="color:firebrick; font-weight:bold;font-size:0.7em">
<font size="5">
For example if you write "Who are"
<font size="5">
###  How to use the application. ###


<li> The <strong>predicted word</strong> is "you". </li>
</font>
