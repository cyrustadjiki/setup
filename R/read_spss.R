read_spss <- function(path, skim = TRUE) {
  #' Function for reading in and pre-processing SPSS data
  #'
  #' @param path A class of "string" that is the file path to your data set.
  #' @param skim A class of "logical" that indicates if I want to print a summary of my data from the skimr package.
  #'
  #' @return table
  #' @export
  #'
  #' @examples
  #' data = read_spss(path = "data/2024 Reports 03.19.24.sav")
  #' data = read_spss(path = "data/2024 Reports 03.19.24.sav", skim = TRUE)
  #' data = read_spss(path = "data/2024 Reports 03.19.24.sav", skim = FALSE)

data =
  haven::read_sav(path) %>%
  janitor::clean_names() %>%
  sjlabelled::as_label()

if(skim==TRUE) print(skimr::skim(data))

return(data)
}
