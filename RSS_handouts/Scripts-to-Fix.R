### Exercise File

### The following code has been written incorrecly, fix each example so that the correct code is outpit

### ========= Exercise 1
### Assigning variables

myVariable - c["hello","world"]
myVariable

### Solution: When the two lines above are evaluated the console should show the vector, [1] "hello" "world"

### ========= Exercise 2
### Extracting elements of lists

MyVariable(2)

### Solution: When this is evaluate the console should display "world"

### ========= Exercise 3
### Fixing Larger expressions - refer to the documentation for the function paste

list <- c["this", "that", "other"]
paste(
  list 
  "and",
  collapse <- " ")

### Solution: evaluating the code in this example should return the following output in the console [1] "this and that and other and"

### ========= Exercise 4 

exampleFunction <- function(argument){
  rep{"Look up quine (computing)", argument}
}
exampleFunction[2]

### Hint: The function is currently collapse thanks to the {}

### Solution: evaluating the code in this example should return the following output in the console [1] "Look up quine (computing)" "Look up quine (computing)"

### ========= Exercise 5
### The code in Exercise 3 is invalid because the incorrect "assignment operator" is used
### In general, the following advice should be followed:
### - Defining functions or variables is done as follows: myVar <- 3
### - Named function arguments must be given with the = operator: grepl(pattern = "[0-9]",c("f","g"))
### 
### This may appear esoteric at present but will become very important when working with Shiny apps.
### You may read discussions about "assignment operators" which go into significantly more detail than this, however the two rules above will be sufficient to save you hours of confusion

### Exercise 5.1
### Fix this data.frame so that the output is [1] "Var.A" "Var.B"
df_exercises_5_1 <- data.frame(
  "Var A" <- c[1,2,NA],
  "Var B" <- c(1,NA,3)
) 
colnames(df_exercises_5_1)

### Exercise 5.2
### User defined functions can easily be designed to accept named arguments - note that this is a significant enough error that line number 62 displays an error message:

myFunction <- function(data <- NULL, repetitions <- NULL){
  paste(rep(data, repetitions), collapse = " and ")
}
myFunction(data = c("cat","dog"), repetitions = 2)

### Solution: The output should be "cat and dog and cat and dog"

### Exercise 5.3
### This is an advanced question - this question can happily be skipped and is simply included as in the Shiny section of the course the instructor will point to template Shiny apps that require this type of assignment

### Evaluate the following code - notice that in the console the expected output is printed
globalVector <- as.numeric()
lapply(c(1,2,3,4,5), 
       function(x){
         globalVector <- append(globalVector, x^2)
         globalVector
       })

### However, the vector we appear to be appending values to is NOT updated.
globalVector

### This is because the internals of a function definition are defined within their own environment (or context)
### For this to work, the symbol in the global evironment (we could consider this to be the "project environment") must be updated
### The following assignment operator ensure that all symbols within its use are in the "project environment":
### <<-

### Solution: When the code above has been fixed, re-evaluating line numbers 72-81 will output [1]  1  4  9 16 25




