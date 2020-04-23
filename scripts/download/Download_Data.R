# This scripts download COVID-19 data from 
# https://data.world/covid-19-data-resource-hub/covid-19-case-counts

library("data.world")
library(xlsx)
library(readr)
library(dplyr)

df <- query(qry_sql("SELECT * FROM covid_19_cases"),
            dataset = "covid-19-data-resource-hub/covid-19-case-counts")

# Sve to exports/csv
write.xlsx(df, "D:\\STUDY\\00.R_Practise\\00.COVID-19\\COVID-19-Investigation\\exports\\csv\\covid-19-cases.xlsx",
           row.names = F)
