set.seed(33183L)

# torus tube embedding in 3-space
x <- sample_torus_tube(120, sd = .05)
pairs(x, asp = 1, pch = 19, cex = .5)

# torus flat embedding in 4-space
x <- sample_torus_flat(120, sd = .05)
pairs(x, asp = 1, pch = 19, cex = .5)

# interlocked tubular tori in 3-space
x <- sample_tori_interlocked(360, ar = 6, sd = .01)
pairs(x, asp = 1, pch = 19, cex = .5)
