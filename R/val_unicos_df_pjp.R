#' @title unique values in each colum
#' @description val_unicos_df_pjp() te retorna un df con los valores(unicos) que existen en cada columna de un df
#' @param df (a data frame)
#' @export
#' @import dplyr
#' @import qpcR
#' @importFrom magrittr %>%
#' @examples
#' val_unicos_df_pjp(cars)



val_unicos_df_pjp <- function(df) {
  bb <- as.data.frame(1:2)
  for(ii in 1:length(df)){
    aa <- df %>% select(ii) %>% unique()
    bb <- qpcR:::cbind.na(bb, aa)
  }
  bb <- bb %>%  dplyr::select(-1)
}