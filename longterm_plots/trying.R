library(tidyverse)
library(lubridate)
library(plotly)
library(htmlTable)

fluxtowers <- c("FlemingNorth", "FlemingSouth", "Creighton", "Severns")

# Function to clean up data if unprocessed
clean_data <- function(df){
  df <- df[!(is.na(df$TIMESTAMP) | df$TIMESTAMP==""), ]
  df <- df %>% 
    filter(!TIMESTAMP %in% c("TS"))
  if ("TIMESTAMP" %in% names(df)) {
    tryCatch({
      nonconforming <- !grepl("^\\d{4}-\\d{2}-\\d{2} \\d{2}:\\d{2}:\\d{2}$", df$TIMESTAMP)
      if(any(nonconforming)) {
        cat("Non-conforming date-time strings found and removed:\n")
        print(df$TIMESTAMP[nonconforming])
        df <- df[!nonconforming, ]
      }
      df$TIMESTAMP <- as.POSIXct(df$TIMESTAMP, format = "%Y-%m-%d %H:%M:%S")
      df$Date <- as.Date(df$TIMESTAMP)
    }, error = function(e) {
      cat("Error occurred in TIMESTAMP conversion. First few values of TIMESTAMP:\n")
      print(head(df$TIMESTAMP))
      stop(e)
    }
    )
  }
  df  # return the cleaned data frame
}


# Function to perform all tasks
clean_and_convert <- function(df) {
  df <- clean_data(df)
  
  # Clean the data and convert columns to appropriate data types
  df$precip_Tot <- as.numeric(df$precip_Tot)
  df$wnd_spd <- as.numeric(df$wnd_spd)
  df$soil_water_Avg.1. <- as.numeric(df$soil_water_Avg.1.)
  df$T_tmpr_rh_mean <- as.numeric(df$T_tmpr_rh_mean)
  
  return(df)
}

# Function to aggregate data on daily basis
create_daily_data <- function(df) {
  df_daily <- df %>%
    group_by(Date) %>%
    summarise(Total_Precipitation = round(sum(precip_Tot, na.rm = TRUE), 2),
              Min_Temperature = round(min(T_tmpr_rh_mean, na.rm = TRUE), 2),
              Max_Temperature = round(max(T_tmpr_rh_mean, na.rm = TRUE), 2),
              Average_Soil_Water_Content = round(mean(soil_water_Avg.1., na.rm = TRUE), 2)) %>%
    ungroup()
  
  return(df_daily)
}

# the rest of your functions go here...

for (fluxtower in fluxtowers) {
  dat_files <- list.files(path = file.path("W:/Flux Tower/Kesondras_Workspace", fluxtower, "Archived"), full.names = TRUE, pattern = "\\.dat$")
  
  all_data <- dat_files %>%
    map_dfr(~{
      df <- read_csv(.x)
      df <- clean_and_convert(df)  # use the adjusted function here
      df
    })
  
  df_daily <- create_daily_data(all_data) 
  
  write_csv(df_daily, file.path("C:/Github_Repositories/kesondrakey.github.io/longterm_plots", paste0(fluxtower, "_daily_data.csv")))
  
  create_and_save_plot(df_daily, fluxtower)
  create_and_save_html_table(df_daily, fluxtower)
}

