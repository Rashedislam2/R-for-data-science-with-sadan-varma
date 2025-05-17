#matrix in R
study_hour= c(89,69,45,75,63,54,23,25,57,60)

subject_marks = c(79,53,71,57,63,54,74,77,61,69)

#creating a matrix just using study_hours
stu_hour_mat= matrix(study_hour)
stu_hour_mat

# Joining two columns in a matrix
student_data = c(study_hour , subject_marks)
student_matrix = matrix(student_data, byrow = FALSE, nrow = 10)
student_matrix
# Naming rows and columns
colnames(student_matrix) = c('Hours', 'Marks')
student_matrix
rownames(student_matrix) = c(1:10)
student_matrix
#selecting an element from matrix
student_matrix[1,2]

summary(stu_hour_mat)

#data frames in R
student_names = c('Mr1','Ms2','Ms3','Mr4','Ms5')
study_hours = c(20,24,46,62,22)
marks = c(40,55,69,54,45)
gender = c('male','female','female','male','female')
male = c ('TRUE','FALSE','FALSE','TRUE','FALSE')

stu_data = data.frame(student_names,study_hour,male)
summary(stu_data)
