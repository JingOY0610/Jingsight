setwd('C:\\Users\\oyjjj\\Desktop\\ingsight\\1_University Rankings\\U.S. News\\regression')
library(XLConnect)
fileXls = "All_year.xlsx" 
exc <- loadWorkbook(fileXls) 
df1 <- readWorksheet(exc,1) 

x = 2008:2019 # Year
n = nrow(df1) # Number of schools to be analyze
sgf_list = 1:n # List to contain all significant level
coe_list = 1:n # List to contain all slope rate 
for (i in 1:n)
	{
		y = df1[i,] # University rank
        y = y[-1] # Eliminate row names
        y = as.integer(y)
        model=lm(y ~ x)
        sgf = coef(summary(model))[2,4] # Significant level
        coe = coef(summary(model))[2,1] # Slope rate
        sgf_list[i] = sgf
        coe_list[i] = coe
	}
print(sgf_list)
print(coe_list)
mydata = cbind(sgf_list, coe_list)

write.csv(mydata, 'C:\\Users\\oyjjj\\Desktop\\ingsight\\1_University Rankings\\U.S. News\\regression\\regression_data.csv')