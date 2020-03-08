#install.packages(arules)
#insatll.packages(arulesviz)

library(readxl)
library(arules)
library(arulesViz)
gro <- read.transactions("F:\\ExcelR\\excelRASS\\ass5 association\\groceries.csv")
View(gro)

itemFrequencyPlot(gro,topN=20, main="Item Frequency")
rules_1 <- apriori(gro,parameter = list(supp=0.005, conf=0.5, minlen=3))
inspect(rules_1)
rules_1_lift<- sort(rules_1, by="lift", decreasing = TRUE)
inspect(rules_1_lift)

rules_2 <- apriori(gro, parameter = list(supp=0.003, conf=0.8, minlen=2))
inspect(rules_2)
rules_2_lift <- sort(rules_2, by="lift", decreasing = TRUE)
inspect(rules_2_lift)

plot(rules_1,method="grouped")
plot(rules_1,method="scatterplot")
plot(rules_1,method="graph")
plot(rules_1,method="matrix")
