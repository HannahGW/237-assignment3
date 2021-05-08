#' Orange yield anomaly 
#' 
#' @param precip A vector containing a timeseries of total precipitation in the month of May (in mm)
#' @param min_temp A vector containing a timeseries of mean minimum daily temperature in the month of December from the year before
#' 
#' @authors Hannah Garcia & Haley Grant
#' @source 
#' Lobell, D. B., Field, C. B., Cahill, K. N., & Bonfils, C. (2006). Impacts of future climate change on California perennial crop yields: Model projections with climate and crop uncertainties. Agricultural and Forest Meteorology, 141(2–4), 208–218. 
#' https://doi.org/10.1016/j.agrformet.2006.10.006

orange_anomaly = function(precip, min_temp, t1=1.08, t2=-0.2, p1=4.99, p2=-1.97, inter=-2.47) {
  
  calc.anomaly <- t1*min_temp + t2*min_temp^2 + p1*precip + p2*precip^2 + inter # Calculate yield anomaly in year desired based on Lobell equation
  
  return(calc.anomaly)
}