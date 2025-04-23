#' Genera números aleatorios con distribución uniforme
#'
#' @param n Número de valores a generar (default: 10000)
#' @param min Valor mínimo del rango (default: 0)
#' @param max Valor máximo del rango (default: 1)
#' @param semilla Valor entero opcional para reproducibilidad (default: NULL)
#'
#' @return Vector numérico con los valores generados
#' @export
generar_uniforme <- function(n = 10000, min = 0, max = 1, semilla = NULL) {
  if (!is.null(semilla)) {
    set.seed(semilla)
  }
  runif(n, min, max)
}
