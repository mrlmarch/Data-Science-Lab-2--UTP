#Carseats = read.csv("D:/Users/amiru/Downloads/Churn_Train.csv")
str(Carseats)
?Carseats

#desc sats
describe(Carseats)
describe(Carseats,Sales, CompPrice, Income)
w12describe(Carseats, Sales:Income)
describe(Carseats, (Sales:Income))

#test the normality
normality(Carseats)
normality(Carseats,Sales, CompPrice, Income)
normality(Carseats, Sales:Income)
normality(Carseats, (Sales:Income))

#plot the normality
plot_normality(Carseats, Sales, CompPrice)

#calc corr
correlate(Carseats)
correlate(Carseats,Sales, CompPrice, Income)
correlate(Carseats, Sales:Income)
correlate(Carseats, (Sales:Income))

#plot corr
Carseats %>%
  correlate() %>%
  plot()

correlate(Carseats, Sales, Price) %>%
  plot()

#EDA based on target variable
categ <- target_by(Carseats, US)

#EDA when target var = categ, predictor = num
cat_num <- relate(categ, Sales)
cat_num
summary(cat_num)
plot(cat_num)

#EDA when target var = categ, predictor categ
cat_cat = relate(categ, ShelveLoc)
cat_cat
summary(cat_cat)
plot(cat_cat)

#EDA when target var is num, predictor is num
num <- target_by(Carseats, Sales)
num_num <- relate(num, Price)
num_num
summary(num_num)
plot(num_num)