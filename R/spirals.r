#' @title Sample (with noise) from a spirals
#'
#' @description This function generates uniform samples from configurations of
#'   spirals in 2-dimensional space, optionally with noise.
#'
#' @details This function is adapted from [KODAMA::spirals()].

#' @name spirals
#' @param n Number of observations.
#' @param s Number of spirals.
#' @param sd Standard deviation of (independent multivariate) Gaussian noise.
#' @examples inst/examples/ex-spirals.r
NULL

#' @rdname spirals
#' @export
sample_spirals <- function(n, s = 3, sd = 0) {
  # split sample size
  ns <- apply(rmultinom(n = n, size = 1, prob = rep(1, s)), 1, sum)
  
  # each spiral, with noise
  spirals <- lapply(1:s, function(i) {
    t <- seq(1 / (4 * pi), 1, length.out = ns[i]) ^ 0.5 * 2 * pi
    if (s != 0) t <- t + rmvunorm(n = ns[i], d = 2, sd = sd)
    cbind(
      x = cos(t + (2 * pi * i) / s) * t,
      y = sin(t + (2 * pi * i) / s) * t
    )
  })
  # bind spirals
  res <- do.call(rbind, spirals)[sample(n), ]
}
