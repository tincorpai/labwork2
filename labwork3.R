### Lab1:   Data Frame
### Author: Taiwo Famuyiwa       
### Date: Sept. 6, 2019



#######################################
#######################################
#DATA FRAME#
#QUESTION1#
#A)
#Using the inbuilt the data set "VADearths"
VADeaths

#Get the class of the data set
class(VADeaths)

#A)
#This is a matrix 
#convert to data frame 
VADeathsr <- as.data.frame(VADeaths)

#B)
#new variable called Total created, sum of each row
VADeathsr$Total <- rowSums(VADeathsr)

#C)
#Reordering column's position in dataframe
VADeathsr <- subset(VADeathsr, select = c(5, 1, 2, 3, 4))


#QUESTION2#
#A)
#Using the in-built data set state.x77
#Get object class
#Dataset is a matrix, convert to dataframe
state.x77
class(state.x77)
state_x77 <- as.data.frame(state.x77)

#B)
#States with income less than 4300
#Apply subset function to achive this goal
#The number of states with income < 4300 is 20
nrow(subset(state_x77, select = Income, subset = (Income < 4300)))

#C)
#State with the highest income 
row.names(state_x77[which.max(state_x77$Income),])

#QUESTION3#
#A)
#Get the data set swiss
swiss

#Create a data frame with row 1, 2, 3, 10, 11, 12 and 13 with 
#column examination, education and infant mortality
swissextract <- data.frame(swiss[c(1, 2, 3, 10, 11, 12, 13), c("Examination","Education","Infant.Mortality")])

#A)
#infant mortality for sarine was changed to missing value
#A row called total sum is created and it is name total
#Sum all columns of swissextract to create an object called swisstotal
#Use rbind function to join column total to last row of swissextract
#rename the last row by "Total"
swissextract$Infant.Mortality[4] <- NA
swisstotal <- colSums(swissextract, na.rm = TRUE)
swisstotal <- rbind(swissextract, swisstotal)
rownames(swisstotal) <- c(rownames(swissextract), "Total")

#B
#Create a column called proportion that divide examination by Total
#Join proportion to swisstotal using cbind
proportion <- swisstotal$Examination / swisstotal["Total", "Examination"]
swisstotal$proportion <- swisstotal$Examination / swisstotal["Total", "Examination"]
  

#QUESTION4#
#A)
#Dataframe that contains state.abb, state.area, state.division, 
#state.name and state.region
state <- data.frame(state.abb, state.area, state.division, state.region, row.names = state.name, stringsAsFactors = FALSE)

#B)
#Add state dataframe to state.x77
State_new <- cbind(state.x77, state)

#C)
#Remove state.division from state_new data frame
State_new$state.division <- NULL

#D)
#Remove variables Life Exp, HS Grad, Frost, State.abb and state.area
state_new <- State_new[, c(-4, -6, -7, -9, -10)] 

#E)
#Create variable to categorize level of literacy with nested ifelse
State_new$litCat <- ifelse(State_new$Illiteracy >= 0 & State_new$Illiteracy < 1, "LOW", ifelse(State_new$Illiteracy >= 1 & State_new$Illiterac < 2, "SOME", "HIGH"))

#F)
#Get state from west with low illiteracy, highest income and income
#Extract state region from the west with high income and income ammount.
incomeH <- subset(State_new, subset = (state.region == "West" & litCat == "LOW"))
row.names(incomeH[which.max(incomeH$Income),])
max(incomeH$Income)



