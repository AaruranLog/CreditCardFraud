library(RMySQL)
setwd("C:/Users/Aaruran/Documents/GitHub/CreditCardFraud/")
df <- data.table::fread("creditcardfraud/creditcard.csv")
sdf<- data.table::fread("creditcardfraud/small.csv")

library(RSQLite)

conn <- dbConnect(RSQLite::SQLite(),":memory:")
dbWriteTable(conn, "creditcard", df)
dbReadTable(conn, "creditcard")
dbDisconnect(conn)
