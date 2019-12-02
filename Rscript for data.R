#Data Preparation - Sports Scheduling Project

setwd("C:/Users/charr/Desktop/BZAN Semester 1/BZAN 531") #Working Directory

D.DATA <- read.csv("use.txt") #AMPL solution file with first row as "ampl: g [*,*,1]"

## WEEK 1 ##
Week1 <- matrix(nrow = 12, ncol = 12)

for (i in 1:12) {
  Week1[i,1] <- trimws(substr(D.DATA[i+1,1], 6,7), which="right") #first column
  Week1[i,2] <- trimws(substr(D.DATA[i+1,1], 10,11), which="right") #second column
  Week1[i,3] <- trimws(substr(D.DATA[i+1,1], 14,15), which="right") #third column
  Week1[i,4] <- trimws(substr(D.DATA[i+1,1], 18,19), which="right") #forth column
  Week1[i,5] <- trimws(substr(D.DATA[i+1,1], 22,23), which="right") #fifth column
  Week1[i,6] <- trimws(substr(D.DATA[i+1,1], 26,27), which="right") #sixth column
  Week1[i,7] <- trimws(substr(D.DATA[i+1,1], 30,31), which="right") #seventh column
  Week1[i,8] <- trimws(substr(D.DATA[i+1,1], 34,35), which="right") #eighth column
  Week1[i,9] <- trimws(substr(D.DATA[i+1,1], 38,39), which="right") #ninth column
  Week1[i,10] <- trimws(substr(D.DATA[i+1,1], 42,43), which="right") #tenth column
  Week1[i,11] <- trimws(substr(D.DATA[i+1,1], 46,47), which="right") #eleventh column
  Week1[i,12] <- trimws(substr(D.DATA[i+1,1], 50,51), which="right") #twelth column
}

## WEEK 2 ##
Week2 <- matrix(nrow = 12, ncol = 12)

for (i in 1:12) {
  Week2[i,1] <- trimws(substr(D.DATA[i+15,1], 6,7), which="right") #first column
  Week2[i,2] <- trimws(substr(D.DATA[i+15,1], 10,11), which="right") #second column
  Week2[i,3] <- trimws(substr(D.DATA[i+15,1], 14,15), which="right") #third column
  Week2[i,4] <- trimws(substr(D.DATA[i+15,1], 18,19), which="right") #forth column
  Week2[i,5] <- trimws(substr(D.DATA[i+15,1], 22,23), which="right") #fifth column
  Week2[i,6] <- trimws(substr(D.DATA[i+15,1], 26,27), which="right") #sixth column
  Week2[i,7] <- trimws(substr(D.DATA[i+15,1], 30,31), which="right") #seventh column
  Week2[i,8] <- trimws(substr(D.DATA[i+15,1], 34,35), which="right") #eighth column
  Week2[i,9] <- trimws(substr(D.DATA[i+15,1], 38,39), which="right") #ninth column
  Week2[i,10] <- trimws(substr(D.DATA[i+15,1], 42,43), which="right") #tenth column
  Week2[i,11] <- trimws(substr(D.DATA[i+15,1], 46,47), which="right") #eleventh column
  Week2[i,12] <- trimws(substr(D.DATA[i+15,1], 50,51), which="right") #twelth column
}

## WEEK 3 ##
Week3 <- matrix(nrow = 12, ncol = 12)

for (i in 1:12) {
  Week3[i,1] <- trimws(substr(D.DATA[i+29,1], 6,7), which="right") #first column
  Week3[i,2] <- trimws(substr(D.DATA[i+29,1], 10,11), which="right") #second column
  Week3[i,3] <- trimws(substr(D.DATA[i+29,1], 14,15), which="right") #third column
  Week3[i,4] <- trimws(substr(D.DATA[i+29,1], 18,19), which="right") #forth column
  Week3[i,5] <- trimws(substr(D.DATA[i+29,1], 22,23), which="right") #fifth column
  Week3[i,6] <- trimws(substr(D.DATA[i+29,1], 26,27), which="right") #sixth column
  Week3[i,7] <- trimws(substr(D.DATA[i+29,1], 30,31), which="right") #seventh column
  Week3[i,8] <- trimws(substr(D.DATA[i+29,1], 34,35), which="right") #eighth column
  Week3[i,9] <- trimws(substr(D.DATA[i+29,1], 38,39), which="right") #ninth column
  Week3[i,10] <- trimws(substr(D.DATA[i+29,1], 42,43), which="right") #tenth column
  Week3[i,11] <- trimws(substr(D.DATA[i+29,1], 46,47), which="right") #eleventh column
  Week3[i,12] <- trimws(substr(D.DATA[i+29,1], 50,51), which="right") #twelth column
}


## WEEK 4 ##
Week4 <- matrix(nrow = 12, ncol = 12)

for (i in 1:12) {
  Week4[i,1] <- trimws(substr(D.DATA[i+43,1], 6,7), which="right") #first column
  Week4[i,2] <- trimws(substr(D.DATA[i+43,1], 10,11), which="right") #second column
  Week4[i,3] <- trimws(substr(D.DATA[i+43,1], 14,15), which="right") #third column
  Week4[i,4] <- trimws(substr(D.DATA[i+43,1], 18,19), which="right") #forth column
  Week4[i,5] <- trimws(substr(D.DATA[i+43,1], 22,23), which="right") #fifth column
  Week4[i,6] <- trimws(substr(D.DATA[i+43,1], 26,27), which="right") #sixth column
  Week4[i,7] <- trimws(substr(D.DATA[i+43,1], 30,31), which="right") #seventh column
  Week4[i,8] <- trimws(substr(D.DATA[i+43,1], 34,35), which="right") #eighth column
  Week4[i,9] <- trimws(substr(D.DATA[i+43,1], 38,39), which="right") #ninth column
  Week4[i,10] <- trimws(substr(D.DATA[i+43,1], 42,43), which="right") #tenth column
  Week4[i,11] <- trimws(substr(D.DATA[i+43,1], 46,47), which="right") #eleventh column
  Week4[i,12] <- trimws(substr(D.DATA[i+43,1], 50,51), which="right") #twelth column
}

## WEEK 5 ##
Week5 <- matrix(nrow = 12, ncol = 12)

for (i in 1:12) {
  Week5[i,1] <- trimws(substr(D.DATA[i+57,1], 6,7), which="right") #first column
  Week5[i,2] <- trimws(substr(D.DATA[i+57,1], 10,11), which="right") #second column
  Week5[i,3] <- trimws(substr(D.DATA[i+57,1], 14,15), which="right") #third column
  Week5[i,4] <- trimws(substr(D.DATA[i+57,1], 18,19), which="right") #forth column
  Week5[i,5] <- trimws(substr(D.DATA[i+57,1], 22,23), which="right") #fifth column
  Week5[i,6] <- trimws(substr(D.DATA[i+57,1], 26,27), which="right") #sixth column
  Week5[i,7] <- trimws(substr(D.DATA[i+57,1], 30,31), which="right") #seventh column
  Week5[i,8] <- trimws(substr(D.DATA[i+57,1], 34,35), which="right") #eighth column
  Week5[i,9] <- trimws(substr(D.DATA[i+57,1], 38,39), which="right") #ninth column
  Week5[i,10] <- trimws(substr(D.DATA[i+57,1], 42,43), which="right") #tenth column
  Week5[i,11] <- trimws(substr(D.DATA[i+57,1], 46,47), which="right") #eleventh column
  Week5[i,12] <- trimws(substr(D.DATA[i+57,1], 50,51), which="right") #twelth column
}

## WEEK 6 ##
Week6 <- matrix(nrow = 12, ncol = 12)

for (i in 1:12) {
  Week6[i,1] <- trimws(substr(D.DATA[i+71,1], 6,7), which="right") #first column
  Week6[i,2] <- trimws(substr(D.DATA[i+71,1], 10,11), which="right") #second column
  Week6[i,3] <- trimws(substr(D.DATA[i+71,1], 14,15), which="right") #third column
  Week6[i,4] <- trimws(substr(D.DATA[i+71,1], 18,19), which="right") #forth column
  Week6[i,5] <- trimws(substr(D.DATA[i+71,1], 22,23), which="right") #fifth column
  Week6[i,6] <- trimws(substr(D.DATA[i+71,1], 26,27), which="right") #sixth column
  Week6[i,7] <- trimws(substr(D.DATA[i+71,1], 30,31), which="right") #seventh column
  Week6[i,8] <- trimws(substr(D.DATA[i+71,1], 34,35), which="right") #eighth column
  Week6[i,9] <- trimws(substr(D.DATA[i+71,1], 38,39), which="right") #ninth column
  Week6[i,10] <- trimws(substr(D.DATA[i+71,1], 42,43), which="right") #tenth column
  Week6[i,11] <- trimws(substr(D.DATA[i+71,1], 46,47), which="right") #eleventh column
  Week6[i,12] <- trimws(substr(D.DATA[i+71,1], 50,51), which="right") #twelth column
}

## WEEK 7 ##
Week7 <- matrix(nrow = 12, ncol = 12)

for (i in 1:12) {
  Week7[i,1] <- trimws(substr(D.DATA[i+85,1], 6,7), which="right") #first column
  Week7[i,2] <- trimws(substr(D.DATA[i+85,1], 10,11), which="right") #second column
  Week7[i,3] <- trimws(substr(D.DATA[i+85,1], 14,15), which="right") #third column
  Week7[i,4] <- trimws(substr(D.DATA[i+85,1], 18,19), which="right") #forth column
  Week7[i,5] <- trimws(substr(D.DATA[i+85,1], 22,23), which="right") #fifth column
  Week7[i,6] <- trimws(substr(D.DATA[i+85,1], 26,27), which="right") #sixth column
  Week7[i,7] <- trimws(substr(D.DATA[i+85,1], 30,31), which="right") #seventh column
  Week7[i,8] <- trimws(substr(D.DATA[i+85,1], 34,35), which="right") #eighth column
  Week7[i,9] <- trimws(substr(D.DATA[i+85,1], 38,39), which="right") #ninth column
  Week7[i,10] <- trimws(substr(D.DATA[i+85,1], 42,43), which="right") #tenth column
  Week7[i,11] <- trimws(substr(D.DATA[i+85,1], 46,47), which="right") #eleventh column
  Week7[i,12] <- trimws(substr(D.DATA[i+85,1], 50,51), which="right") #twelth column
}

## WEEK 8 ##
Week8 <- matrix(nrow = 12, ncol = 12)

for (i in 1:12) {
  Week8[i,1] <- trimws(substr(D.DATA[i+99,1], 6,7), which="right") #first column
  Week8[i,2] <- trimws(substr(D.DATA[i+99,1], 10,11), which="right") #second column
  Week8[i,3] <- trimws(substr(D.DATA[i+99,1], 14,15), which="right") #third column
  Week8[i,4] <- trimws(substr(D.DATA[i+99,1], 18,19), which="right") #forth column
  Week8[i,5] <- trimws(substr(D.DATA[i+99,1], 22,23), which="right") #fifth column
  Week8[i,6] <- trimws(substr(D.DATA[i+99,1], 26,27), which="right") #sixth column
  Week8[i,7] <- trimws(substr(D.DATA[i+99,1], 30,31), which="right") #seventh column
  Week8[i,8] <- trimws(substr(D.DATA[i+99,1], 34,35), which="right") #eighth column
  Week8[i,9] <- trimws(substr(D.DATA[i+99,1], 38,39), which="right") #ninth column
  Week8[i,10] <- trimws(substr(D.DATA[i+99,1], 42,43), which="right") #tenth column
  Week8[i,11] <- trimws(substr(D.DATA[i+99,1], 46,47), which="right") #eleventh column
  Week8[i,12] <- trimws(substr(D.DATA[i+99,1], 50,51), which="right") #twelth column
}

## WEEK 9 ##
Week9 <- matrix(nrow = 12, ncol = 12)

for (i in 1:12) {
  Week9[i,1] <- trimws(substr(D.DATA[i+113,1], 6,7), which="right") #first column
  Week9[i,2] <- trimws(substr(D.DATA[i+113,1], 10,11), which="right") #second column
  Week9[i,3] <- trimws(substr(D.DATA[i+113,1], 14,15), which="right") #third column
  Week9[i,4] <- trimws(substr(D.DATA[i+113,1], 18,19), which="right") #forth column
  Week9[i,5] <- trimws(substr(D.DATA[i+113,1], 22,23), which="right") #fifth column
  Week9[i,6] <- trimws(substr(D.DATA[i+113,1], 26,27), which="right") #sixth column
  Week9[i,7] <- trimws(substr(D.DATA[i+113,1], 30,31), which="right") #seventh column
  Week9[i,8] <- trimws(substr(D.DATA[i+113,1], 34,35), which="right") #eighth column
  Week9[i,9] <- trimws(substr(D.DATA[i+113,1], 38,39), which="right") #ninth column
  Week9[i,10] <- trimws(substr(D.DATA[i+113,1], 42,43), which="right") #tenth column
  Week9[i,11] <- trimws(substr(D.DATA[i+113,1], 46,47), which="right") #eleventh column
  Week9[i,12] <- trimws(substr(D.DATA[i+113,1], 50,51), which="right") #twelth column
}

#Convert to numeric matrix
Week1 <- apply(Week1, 2, as.numeric)
Week2 <- apply(Week2, 2, as.numeric)
Week3 <- apply(Week3, 2, as.numeric)
Week4 <- apply(Week4, 2, as.numeric)
Week5 <- apply(Week5, 2, as.numeric)
Week6 <- apply(Week6, 2, as.numeric)
Week7 <- apply(Week7, 2, as.numeric)
Week8 <- apply(Week8, 2, as.numeric)
Week9 <- apply(Week9, 2, as.numeric)

Week1Schedule <- matrix(ncol=3, nrow=length(which(Week1 == 1)))
Count <- 0
for (i in 1:12) {
  if(max(Week1[i,]) == 1) { 
    
    Count <- Count + 1
    Week1Schedule[Count,1] <- i
    Week1Schedule[Count,2] <- which(Week1[i,] == max(Week1[i,]))
    Week1Schedule[Count,3] <- 1
    
  } }

Week2Schedule <- matrix(ncol=3, nrow=length(which(Week2 == 1)))
Count <- 0
for (i in 1:12) {
  if(max(Week2[i,]) == 1) { 
    
    Count <- Count + 1
    Week2Schedule[Count,1] <- i
    Week2Schedule[Count,2] <- which(Week2[i,] == max(Week2[i,]))
    Week2Schedule[Count,3] <- 2
    
  } }

Week3Schedule <- matrix(ncol=3, nrow=length(which(Week3 == 1)))
Count <- 0
for (i in 1:12) {
  if(max(Week3[i,]) == 1) { 
    
    Count <- Count + 1
    Week3Schedule[Count,1] <- i
    Week3Schedule[Count,2] <- which(Week3[i,] == max(Week3[i,]))
    Week3Schedule[Count,3] <- 3
    
  } }

Week4Schedule <- matrix(ncol=3, nrow=length(which(Week4 == 1)))
Count <- 0
for (i in 1:12) {
  if(max(Week4[i,]) == 1) { 
    
    Count <- Count + 1
    Week4Schedule[Count,1] <- i
    Week4Schedule[Count,2] <- which(Week4[i,] == max(Week4[i,]))
    Week4Schedule[Count,3] <- 4
    
  } }

Week5Schedule <- matrix(ncol=3, nrow=length(which(Week5 == 1)))
Count <- 0
for (i in 1:12) {
  if(max(Week5[i,]) == 1) { 
    
    Count <- Count + 1
    Week5Schedule[Count,1] <- i
    Week5Schedule[Count,2] <- which(Week5[i,] == max(Week5[i,]))
    Week5Schedule[Count,3] <- 5
    
  } }

Week6Schedule <- matrix(ncol=3, nrow=length(which(Week6 == 1)))
Count <- 0
for (i in 1:12) {
  if(max(Week6[i,]) == 1) { 
    
    Count <- Count + 1
    Week6Schedule[Count,1] <- i
    Week6Schedule[Count,2] <- which(Week6[i,] == max(Week6[i,]))
    Week6Schedule[Count,3] <- 6
    
  } }

Week7Schedule <- matrix(ncol=3, nrow=length(which(Week7 == 1)))
Count <- 0
for (i in 1:12) {
  if(max(Week7[i,]) == 1) { 
    
    Count <- Count + 1
    Week7Schedule[Count,1] <- i
    Week7Schedule[Count,2] <- which(Week7[i,] == max(Week7[i,]))
    Week7Schedule[Count,3] <- 7
    
  } }

Week8Schedule <- matrix(ncol=3, nrow=length(which(Week8 == 1)))
Count <- 0
for (i in 1:12) {
  if(max(Week8[i,]) == 1) { 
    
    Count <- Count + 1
    Week8Schedule[Count,1] <- i
    Week8Schedule[Count,2] <- which(Week8[i,] == max(Week8[i,]))
    Week8Schedule[Count,3] <- 8
    
  } }

Week9Schedule <- matrix(ncol=3, nrow=length(which(Week9 == 1)))
Count <- 0
for (i in 1:12) {
  if(max(Week9[i,]) == 1) { 
    
    Count <- Count + 1
    Week9Schedule[Count,1] <- i
    Week9Schedule[Count,2] <- which(Week9[i,] == max(Week9[i,]))
    Week9Schedule[Count,3] <- 9
    
  } }

Schedule <- rbind(Week1Schedule, Week2Schedule, Week3Schedule, Week4Schedule, Week5Schedule, Week6Schedule, Week7Schedule, Week8Schedule, Week9Schedule)

#for (i in 1:nrow(Schedule)) {
 # if(Schedule[i,1] == Schedule[i,2]) {Schedule[i,] <- NA}
#}

Schedule <- Schedule[!is.na(Schedule[,1]),]
colnames(Schedule) <- c("Home", "Away", "Week")

#Attach team names
Home <- Schedule[,1]
Away <- Schedule[,2]

Home[which(Home == 1)] <- "CAN"
Home[which(Home == 2)] <- "ICE"
Home[which(Home == 3)] <- "SWE"
Home[which(Home == 4)] <- "RUS"
Home[which(Home == 5)] <- "DEN"
Home[which(Home == 6)] <- "JAP"
Home[which(Home == 7)] <- "ANT"
Home[which(Home == 8)] <- "AUS"
Home[which(Home == 9)] <- "CHI"
Home[which(Home == 10)] <- "ARG"
Home[which(Home == 11)] <- "TAH"
Home[which(Home == 12)] <- "FIJ"


Away[which(Away == 1)] <- "CAN"
Away[which(Away == 2)] <- "ICE"
Away[which(Away == 3)] <- "SWE"
Away[which(Away == 4)] <- "RUS"
Away[which(Away == 5)] <- "DEN"
Away[which(Away == 6)] <- "JAP"
Away[which(Away == 7)] <- "ANT"
Away[which(Away == 8)] <- "AUS"
Away[which(Away == 9)] <- "CHI"
Away[which(Away == 10)] <- "ARG"
Away[which(Away == 11)] <- "TAH"
Away[which(Away == 12)] <- "FIJ"



Schedule[,1] <- Home
Schedule[,2] <- Away

FinalSchedule <- Schedule
write.csv(FinalSchedule, "FinalSchedule.csv") #export csv

locations <- unique(Away)
fs <- as.data.frame(FinalSchedule)

