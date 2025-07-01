#' Run the Adult Income Shiny App
#'
#' @return Launches Shiny app
#' @export
run_dashboard <- function() {
  app_dir <- system.file("app", package = "adultIncomeDashboard")
  shiny::runApp(app_dir)
}
