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

# # Change to the target directory
setwd("C:/Users/keyke/Documents/GitHub/kesondrakey.github.io")

git_status <- system("git status --porcelain", intern = TRUE)
if(length(git_status) > 0) {
  timestamp <- format(Sys.time(), "%Y-%m-%d %H:%M:%S")
  commit_msg <- paste0("Automated commit at ", timestamp)
  system(paste0("git add ."))
  system(paste0("git commit -m \"", commit_msg, "\""), intern = TRUE)
  system("git push")
}
 



