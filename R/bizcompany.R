#' Create a dataframe of company and branch level data
#'
#' Generate a dataframe of size integer n of company level data
#'
#' @param n int, sample size of dataframe
#'
#' @return dataframe
#' @export
#'
#' @examples
#' bizcompany(10)
#' bizcompany(150)

bizcompany <- function(n){
  revenue <- round(stats::rnorm(n, 10000000, 2500000), 0)
  expenses <- round(stats::rnorm(n, 9000000, 1500000), 0)
  units_sold <- round(stats::rnorm(n, 500000, 120000), 0)
  profit <- round(revenue - expenses, 0)
  branchID <- c(1:n)


  temp <- data.frame(branchID, revenue, expenses, profit, units_sold)
  temp

}

