get_file_info <- function(path) {
  #' Function for getting file information
  #'
  #' @param path A class of "string" that is the file path I want info for.
  #'
  #' @return data table
  #' @export
  #'
  #' @examples
  #' get_file_info(getwd())
  #' get_file_info(file.path(getwd(),"output"))

  data = dir(path,full.names = TRUE) %>%
    file.info() %>%
    mutate(file_name = str_remove(row.names(.),path)) %>%
    select(file_name, contains("time"),size)

  row.names(data) = 1:nrow(data)
  return(data)
}
