Churn_Train = read.csv("D:/Users/amiru/Downloads/Churn_Train.csv");
Churn_Train

head(Churn_Train)

#View(Churn_Train)
describe(Churn_Train)

class(Churn_Train$Total.Charges)

# Check missing values 
missing_values <- is.na(Churn_Train$Total.Charges)

# Count missing values
sum(missing_values)

# Count missing values in each column
colSums(is.na(Churn_data))

# Input missing values in 'column_name' with mean
Churn_Train$Total.Charges[missing_values] <- mean(Churn_Train$Total.Charges, na.rm = TRUE)


colSums(is.na(Churn_Train))

#DESCRIBE
describe(Churn_Train)
describe(Churn_Train, Internet.Service, Contract, Total.Charges)
describe(Churn_Train, Internet.Service:Churn) #from internet service to churn
describe(Churn_Train,(Internet.Service:Churn))

#normality
normality(Churn_Train)
normality(Churn_Train, Internet.Service, Contract, Total.Charges)
normality(Churn_Train, Internet.Service:Churn)
normality(Churn_Train,(Internet.Service:Churn))


#plot data
plot_normality(Churn_Train, Internet.Service, Contract, Total.Charges)

#2 Plot Correlation
correlate(Churn_Train)
correlate(Churn_Train, Internet.Service, Contract, Total.Charges)
correlate(Churn_Train, Internet.Service:Churn)
correlate(Churn_Train,(Internet.Service:Churn))

#plot
Churn_Train % %
  correlate() %>%
  plot()

correlate(Churn_Train, Internet.Service, Contract, Total.Charges) %>%
  plot()

#3-EDA on target variable
categ <- target_by(Churn_Train, Churn)

#EDA when target var is categ, predictor is num
cat_num <- relate(categ, Total.Charges)
cat_num
summary(cat_num)
plot(cat_num)

#EDA when target var is categ, predictor is categ
cat_cat = relate(categ, Payment.Method)
cat_cat
summary(cat_cat)
plot(cat_cat)

#EDA when target var is num, predictor is num
num <- target_by(Churn_Train, Total.Charges)
num_num <- relate(num, Monthly.Charges)
num_num
summary(num_num)
plot(num_num)

