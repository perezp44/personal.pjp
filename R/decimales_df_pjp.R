#' @title deja los decimales q le digas a un df
#' @description decimales_df_pjp() te retorna un df con los decimales que le digas
#' decimales_df_pjp function redondea los valores de un dataframe. Le metes un df y redondea sus valores
#'
#' @param df Un dataframe
#' @param nn el nº de decimales (Default = 2)
#' @return Un nuevo \code{df} con sus valores redondeados a \code{nn}
#' @examples
#' decimales_df_pjp(cars, nn = 2)
#' @export


decimales_df_pjp <- function(df,nn = 2) {
  is.num <- sapply(df, is.numeric)
  df[is.num] <- lapply(df[is.num], round, nn)
  df
}
