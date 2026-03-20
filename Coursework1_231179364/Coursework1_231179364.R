#' ---
#' title: Time Series Week NNN
#' author: You
#' date: Today
#' ---

Data <-read.csv("Data/Dataset.csv")
df <- data.frame( ds = as.Date(as.character(data$Date), format = "%Y%m%d"), y = data$Mean.temperature)
head(df)
library(prophet)
m <- prophet(df, yearly.seasonality = TRUE, weekly.seasonality = TRUE)
future <- make_future_dataframe(m, periods = 30)
forecast <- predict(m, future)
plot(m, forecast)
prophet_plot_components(m, forecast)

install.prophet()

Data =read.csv("Data/Dataset.csv")
df = data.frame( ds = as.Date(as.character(Data$Date), format = "%Y%m%d"), y = Data$Mean.temperature)
head(df)
library(prophet)
m = prophet(df, yearly.seasonality = TRUE, weekly.seasonality = TRUE)
future = make_future_dataframe(m, periods = 30)
forecast <- predict(m, future)
plot(m, forecast)
prophet_plot_components(m, forecast)
