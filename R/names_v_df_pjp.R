#' @title Gets a summary for the given data frame.
#' @description For each variable in the df it returns: Quantity and percentage of zeros (q_zeros and p_zeros respectevly). Same metrics for NA values (q_NA and p_na). Last two columns indicates data type and quantity of unique values.
#' This function uses a df as inputs and returns a dataframe with the names and some chracteristics of the variables (colums) of the input dataframe. By the way, this function comes from the funModeling package made by Pablo Casas <pabloc@datascienceheroes.com>, gracias Pablo!! Solo le he añadido la opcion por defecto print=FALSE
#' This function print and return the results.
#' @param data  (a data frame)
#' @param print (default to FALSE)
#' @export
#' @examples
#' names_v_df.pjp(cars)

names_v_df_pjp <- function(data, print=FALSE) {
  df_status=data.frame(
    q_zeros=sapply(data, function(x) sum(x==0,na.rm=T)),
    p_zeros=round(100*sapply(data, function(x) sum(x==0,na.rm=T))/nrow(data),2),
    q_na=sapply(data, function(x) sum(is.na(x))),
    p_na=round(100*sapply(data, function(x) sum(is.na(x)))/nrow(data),2),
    type=sapply(data, class),
    unique=sapply(data, function(x) sum(!is.na(unique(x)))),
    min=sapply(data, function(x) ifelse( is.numeric(x), round(min(x,na.rm=T),2), NA)),
    max=sapply(data, function(x) ifelse( is.numeric(x), round(max(x,na.rm=T),2), NA)),
    mean=sapply(data, function(x) ifelse( is.numeric(x), round(mean(x,na.rm=T),2), NA)),
    sd=sapply(data, function(x) ifelse( is.numeric(x), round(sd(x,na.rm=T),2), NA))

  )
  ## Create new variable for column name
  df_status$variable=rownames(df_status)
  rownames(df_status)=NULL

  ## Reordering columns
  df_status=df_status[,c(11,1,2,3,4,5,6,7,8,9,10)]
  if (print== 1) {print(df_status)}
  return(df_status)
}


