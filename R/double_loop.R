double_loop <- function() {
  #' Function for looping through data.frame and apply operations to specific values.
  #'

array = c("Tatooine", "Stewjon")

operations = function(data) {
  # data %>%
  #   mutate(eye_color = ifelse(eye_color=="blue", "BLUEEEE", eye_color)) %>%
  return(data)
  }

append_rows = function(data = starwars, array, operations_function){


  # sub_append = function(data, arg1, arg1_name){
  #
  #   data %>%
  #     dplyr::filter({{arg1_name}}==arg1) %>%
  #     operations_function(data = .) %>%
  #     return()
  # }

do.call(rbind,lapply(1:length(array), function(i) sub_append(array[i], homeworld))) %>%
  return()

}

append_rows(
  data = starwars,
  array = array,
  operations_function = operations
  )

}
