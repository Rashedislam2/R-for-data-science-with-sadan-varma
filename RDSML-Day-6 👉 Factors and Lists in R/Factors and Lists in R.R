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
