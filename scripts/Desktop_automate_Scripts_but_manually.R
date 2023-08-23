#Full paths to the scripts to run
scripts <- c(
  "//ewa-fluxfp1/fluxtower/DISES_data/Workspace/scripts/Desktop_dailyfiles_datamanagement_runfirst.R",
 # "//ewa-fluxfp1/fluxtower/DISES_data/Workspace/scripts/dailyplots_runsecond.R",
  "//ewa-fluxfp1/fluxtower/DISES_data/Workspace/scripts/Desktop_updated_sistersites_plots_pdfs.R", #replace runsecond? need to check
 # "//ewa-fluxfp1/fluxtower/DISES_data/Workspace/scripts/updatesite_runthird_error_cat.R",
  "//ewa-fluxfp1/fluxtower/DISES_data/Workspace/scripts/Desktop_RunFourth_Create_Plots_and_Tables.R"
)

# Function to clean environment
clean_environment <- function() {
  rm(list=ls(all=TRUE))
  gc()
}

# Run scripts
for(script in scripts) {
  source(script)
  clean_environment()
}

# # # Change to the target directory
# setwd("C:/Users/keyke/Documents/GitHub/kesondrakey.github.io")
# 
# git_status <- system("git status --porcelain", intern = TRUE)
# if(length(git_status) > 0) {
#   timestamp <- format(Sys.time(), "%Y-%m-%d %H:%M:%S")
#   commit_msg <- paste0("Automated commit at ", timestamp)
#   system(paste0("git add ."))
#   system(paste0("git commit -m \"", commit_msg, "\""), intern = TRUE)
#   system("git push")
# }
#  



####
# Define the log file path
log_file <- "//ewa-fluxfp1/FluxTower/DISES_data/Workspace/scripts/log.txt"

# Define the logging function
log_message <- function(msg) {
  timestamp <- format(Sys.time(), "%Y-%m-%d %H:%M:%S")
  cat(paste0(timestamp, ": ", msg, "\n"), file = log_file, append = TRUE)
}

# Begin script operations
log_message("Script started.")

# Check Git status
git_status <- system("git status --porcelain", intern = TRUE)

# Log the Git status
log_message(paste0("Git status: ", ifelse(length(git_status) > 0, git_status, "No changes.")))

# If there are changes, commit and push them
if(length(git_status) > 0) {
  timestamp <- format(Sys.time(), "%Y-%m-%d %H:%M:%S")
  commit_msg <- paste0("Automated commit at ", timestamp)
  
  log_message("Starting the git add process.")
  system("git add .")
  
  log_message("Starting the git commit process.")
  system(paste0("git commit -m \"", commit_msg, "\""), intern = TRUE)
  
  log_message("Starting the git push process.")
  system("git push")
}

log_message("Script finished.")
