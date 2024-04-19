comparing_classes = function(df1,df2){
  #' Function for comparing the classes of tow data sets for if I am having difficulty joining them.
  #'
  #' @param df1 an object of class "data.frame".
  #' @param df2 an object of class "data.frame".
  #'
  #' @return data.frame object
  #' @export
  #'
  #' @examples
  #' comparing_classes(df1,df2)
  #' comparing_classes(
  #'   df1 = cars,
  #'   df2 = mtcars %>% select(mpg,cyl)
  #'   )

  finding_classes = function(data_frame){

  class_list = sapply(data_frame, class)

  sapply(
    1:length(class_list),
      function(column)
      class_list[[column]][1]) %>%
    return()
  }

  data.frame(
    df1_var_name = names(df1),
    df1_var_class = finding_classes(df1),
    df2_var_name = names(df2),
    df2_var_class = finding_classes(df2)) %>%
    mutate(same_class = df1_var_class == df2_var_class) %>%
    return()
}
