df1 <- read.csv("raw_data/SPX_5min_data.csv")

df1$day_of_week <- wday(df1$dt, label = TRUE, abbr = FALSE)

df1$month <- month(df1$dt)

for (i in df1$month){
    for (y in df1$day_of_week){

        if(y == "Friday"){

            df1$nfp_day <- 1
        }
        else {
           
           df1$nfp_day <- 0
           
        }

    }
}