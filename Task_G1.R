#Ayah Ali Abdelhameed

#Read the Dataset : 
Task <- read.csv('G1_Allometry.csv')
#View your dataset on R environment:
View(Task)
#The number of Rows : 
nrow(Task)
#The number of Columns : 
ncol(Task)
# Column names.
colnames(Task)
#Data structure of The dataset:
str(Task)
#Data Summary : 
summary(Task)
#Get first Row of the dataset :
head(Task)
#Get Last 6 Rows of the dataset :
tail(Task)
#getting specific numbers of rows in the data set
head(Task,20)
tail(Task,30)
#Removing some Columns in the dataset :
Task2 <-head(Task[,-c(2:3)])
Task2
#Get Specific row :
specificrow <-Task[2,]
specificrow
#Get specific Column :
specificcol <- Task[,2]
specificcol
#Getting specific Row and column :
specificrc <- Task[1,2]
specificrc
#Filtering the dataset accroding to specific conditions:
filter <- Task[Task$species=='PIPO',]
filter
#Sorting 
sortdata <- Task[order(Task$height),]
sortdata
#Deleting column :
Task$branchmass <- NULL
Task
#Re-coding :
Task$newspecies[Task$species == 'PSME']='1'
Task$newspecies[Task$species == 'PIPO']='2'
Task$newspecies[Task$species == 'PIMO']='3'
Task
#Simplify the code using factor :
str(Task$species)
Task$species <- as.factor(Task$species)
str(Task$species)
# IS na
is.na(Task)
#• get all row with missing data for specific variable.
any(is.na(Task))
#Visualization
draw_hist <- ggplot(Task, aes(x=diameter,y=height))
draw_hist
draw_hist + geom_histogram()
draw_hist + geom_histogram(binwidth = 5)
draw_hist + geom_histogram(color="green")
draw_hist + geom_histogram(fill="red")
draw_hist + geom_histogram(alpha = 0.5)


