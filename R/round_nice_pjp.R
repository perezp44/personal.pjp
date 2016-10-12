#' @title round numbers nicely
#' @description Ya lo he dicho round numbers nicely
#' This function rounds data in a nice way. See: ttps://twitter.com/hspter/status/314858331598626816
#' @param nn  (digitos, default=2)
#' @export
#' @examples
#'  round_nice_pjp(c(-0.0002, 0.0002, 0.5, -0.5, -0.002), dig=3))   this should return c("0.000", "0.000", "0.500", "-0.500", "-0.002")


round_nice_pjp <- function(..., nn = 2) {
  g <- sprintf(paste0("%.", nn, "f"), ...)
  z <- paste0("0.", paste(rep("0", nn), collapse=""))
  g[g==paste0("-",z)] <- z
  return(g)
}

