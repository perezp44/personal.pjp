#' @title arregla una base de datos sacada de Eurostat
#' @description te retorna un df arreglado (con los codigos y labels)
#'
#' @param df Un dataframe
#' @return Un nuevo df
#' @examples
#' arreglar_df_Eurostat(df)
#' @export
#' @import eurostat


arreglar_df_Eurostat <- function(df,df_l) {
  geo_codes <- eurostat::get_eurostat_dic("geo")  %>% dplyr::rename(geo = code_name)        #- saco y arreglo los geo codes
  df_ok <- left_join(df, geo_codes, by = "geo")
  unit_codes <- eurostat::get_eurostat_dic("unit") %>% dplyr::rename(unit = code_name) %>% dplyr::rename(name_unit = full_name)
  df_ok <- left_join(df_ok, unit_codes, by = "unit")
  df_ok
}


