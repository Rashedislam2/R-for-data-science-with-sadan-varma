# factor in R

#summary of numeric items
participants_age= c(78,25,68,45,48,36)
summary(participants_age)

#summary of characters
profession=c("doctor","teacher","teacher","businessman","teacher")
summary(profession)
fact_profession = factor(profession)
summary(fact_profession)

#putting the summary in order
birth_month= c("jan","mar","may","jun","jul","jan","mar","apr","jun","aug","sep","oct","feb","dec","nov","mar","apr")
birth_month_fact = factor(birth_month,
                          ordered = TRUE,
                          labels = c("jan","feb",'mar','apr',"may",'jun','jul','aug',"sep","oct","nov","dec"))
summary(birth_month_fact)


#list in R 
#lists are used to place number of items in bundle

a = c(2,4,7)
b = c('red',"green","blue")
c = "welcome!"

my_list = list(a,b,c)
my_list

#naming the list items

my_list = list(Pieces=a,Colors=b,Message=c)
my_list

#CALLIng a specific data structure
my_list[3]
my_list['Colors']
my_list$Pieces
my_list$Colors

#calling specific items from data structure

my_list$Colors[2]
my_list$Colors[3]
