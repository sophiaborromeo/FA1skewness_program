#First, I'll set my working directory

setwd("C:/Users/Elisha/Desktop/FA1")
exam_results <- read.table("results.txt", header = TRUE, na.strings = "NA")
print(exam_results)
View(exam_results)

#Now that I know that it can read my file, I can proceed to writing the skewness program to calculate the skewness coefficient of each subjects in my file

#I need this to ensure that the argument is numeric
exam_results$arch1 <- as.numeric(exam_results$Arch1)
#Calculating the mean of arch1
mean_arch1 <- mean(exam_results$arch1, na.rm = TRUE)
#Calculating the median of arch1
median_arch1 <- median(exam_results$arch1, na.rm = TRUE)
#Calculating the standard deviation of arch1
sd_arch1 <- sd(exam_results$arch1, na.rm = TRUE)
#Calculating skewness of arch1 based on Pearson's 
skewness_arch1 <- 3 * (mean_arch1 - median_arch1) / sd_arch1
print(skewness_arch1)

exam_results$prog1 <- as.numeric(exam_results$Prog1)
#Calculating the mean of prog1
mean_prog1 <- mean(exam_results$prog1, na.rm = TRUE)
#Calculating the median of prog1
median_prog1 <- median(exam_results$prog1, na.rm = TRUE)
#Calculating the standard deviation of prog1
sd_prog1 <- sd(exam_results$prog1, na.rm = TRUE)
#Calculating skewness of prog1 based on Pearson's 
skewness_prog1 <- 3 * (mean_prog1 - median_prog1) / sd_prog1
print(skewness_prog1)

exam_results$arch2 <- as.numeric(exam_results$Arch2)
#Calculating the mean of arch2
mean_arch2 <- mean(exam_results$arch2, na.rm = TRUE)
#Calculating the median of arch2
median_arch2 <- median(exam_results$arch2, na.rm = TRUE)
#Calculating the standard deviation of arch2
sd_arch2 <- sd(exam_results$arch2, na.rm = TRUE)
#Calculating skewness of arch2 based on Pearson's
skewness_arch2 <- 3 * (mean_arch2 - median_arch2) / sd_arch2
print(skewness_arch2)

exam_results$prog2 <- as.numeric(exam_results$Prog2)
#Calculating the mean of prog2
mean_prog2 <- mean(exam_results$prog2, na.rm = TRUE)
#Calculating the median of prog2
median_prog2 <- median(exam_results$prog2, na.rm = TRUE)
#Calculating the standard deviation of prog2
sd_prog2 <- sd(exam_results$prog2, na.rm = TRUE)
#Calculating skewness of prog2 based on Pearson's 
skewness_prog2 <- 3 * (mean_prog2 - median_prog2) / sd_prog2
print(skewness_prog2)

#To avoid redundancy, I will remove repeating columns
exam_results$Arch1 <- NULL
exam_results$Prog1 <- NULL
exam_results$Arch2 <- NULL
exam_results$Prog2 <- NULL

#As seen from the module, I will do this for comparison
summary(exam_results)
