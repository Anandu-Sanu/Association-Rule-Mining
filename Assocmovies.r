#install.packages(arules)
#insatll.packages(arulesviz)

library(readxl)
library(arules)
library(arulesViz)
movies <- read.csv("F:\\ExcelR\\excelRASS\\ass5 association\\movies\\my_movies.csv")
movies <- movies[6:15]
View(movies)

rules_1 <- apriori(as.matrix(movies),parameter = list(supp=0.05, conf=0.6, minlen=3))
inspect(rules_1)
rules_1_lift<- sort(rules_1, by="lift", decreasing = TRUE)
inspect(rules_1_lift)

rules_2 <- apriori(as.matrix(movies), parameter = list(supp=0.04, conf=0.8, minlen=2))
inspect(rules_2)
rules_2_lift <- sort(rules_2, by="lift", decreasing = TRUE)
inspect(rules_2_lift)

plot(rules_1,method="grouped")
plot(rules_1,method="scatterplot")
plot(rules_1,method="graph")
plot(rules_1,method="matrix")
