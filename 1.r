age <- c(35, 65, 49, 30, 20, 40, 90, 54, 78, 45)
systolic_pressure <- c(122, 120, 120, 115, 130, 131, 118, 122, 120, 115)
diastolic_pressure <- c(83, 79, 78, 72, 90, 90, 82, 80, 82, 75)
calculate_stats <- function(data) {
  n <- length(data)
  min_val <- min(data)
  max_val <- max(data)
  median_val <- median(data)
  mean_val <- mean(data)
  variance_val <- var(data)
  sd_val <- sd(data)
  
  return(c(n, min_val, max_val, median_val, mean_val, variance_val, sd_val))
}
age_stats <- calculate_stats(age)
systolic_pressure_stats <- calculate_stats(systolic_pressure)
diastolic_pressure_stats <- calculate_stats(diastolic_pressure)
stats_table <- data.frame(
  Statistic = c("Number of samples", "Minimum value", "Maximum value", "Median", "Mean", "Variance", "Standard deviation"),
  Age = age_stats,
  Systolic_Pressure = systolic_pressure_stats,
  Diastolic_Pressure = diastolic_pressure_stats
)

print(stats_table)
