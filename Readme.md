# Introduction to my blog
* This is a piece of code from my personal blog "Jingsight" on WeChat, though my blog is writen in Chinese
* The original url for the article of this code is https://mp.weixin.qq.com/s/nmBDPI_AGVGXxJUGCz0KJg

# Introduction to this piece of code
* I was researching on the historical university rank data of U.S. News (All_year.xlsx)
* The data comes from Public University Honors "http://publicuniversityhonors.com/"
* I expected to anticipate the ranking trend of each university (increase or decrease) using historical data and to forecast its future ranking
* For each university in the ranking list, a linear regression model was built using ranking as dependent variable and year as independent variable
* The significance level and the slope of each regression is recorded into a list respectively
* The two lists are writen into a new csv file "regression_data.csv"