% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tdaunif.r
\docType{package}
\name{tdaunif}
\alias{tdaunif}
\alias{tdaunif-package}
\title{\code{tdaunif}: Uniform manifold samplers for topological data analysis}
\description{
Generate uniform random samples from embedded manifolds,
optionally with noise.
}
\details{
This package assembles functions that generate samples of points
from the surfaces of a manifold embedded via parameterization in an ambient
Euclidean space according to a uniform probability distribution over the
manifold surface. This can be contrasted with sampling uniformly from the
parameter space and mapping the sampled points to the ambient space.
Additionally, Gaussian noise in the ambient space can be added to any
sample.

Several samplers use rejection sampling as illustrated by Diaconis, Holmes,
and Shahshahani (2013).
}
\references{
J Arvo (2001) Stratified Sampling of 2-Manifolds. \emph{SIGRAPH 2001 (State of the
Art in Monte Carlo Ray Tracing for Realistic Image Synthesis)}, Course Notes,
Vol. 29. \url{http://www.cs.virginia.edu/~jdl/bib/globillum/arvo01_notes.pdf}

P Diaconis, S Holmes, and M Shahshahani (2013) Sampling from a Manifold.
\emph{Advances in Modern Statistical Theory and Applications: A Festschrift in
honor of Morris L. Eaton}, 102--125. \doi{10.1214/12-IMSCOLL1006}
}
\author{
Jason Cory Brunson
}