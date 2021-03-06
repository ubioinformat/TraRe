% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rewiring_stats_functions.R
\name{rewiring_test}
\alias{rewiring_test}
\alias{rewiring_test_pair_detail}
\title{Generate stats for the rewiring method.}
\usage{
rewiring_test(x, grp, perm = 500)

rewiring_test_pair_detail(x, grp, perm = 500)
}
\arguments{
\item{x}{data matrix containing subjects as rows and genes as columns.}

\item{grp}{array indicating the subject group membership.}

\item{perm}{number of permutations for the test.}
}
\value{
list containing the pvalue associated to the rewiring test, the initial t-stat
and the t-stat after the permutation test.
}
\description{
When performing the rewiring test, some stats must be generated in order to proceed with the
rewiring method. \code{dave_test()} performs a permutation test from a data matrix and a group membership.
This function is used in the \code{runrewiring()} method.
}
\examples{

  ## We are going to generate a random matrix `x` and `grp` for the example.
  ## We will use 40 samples and 100 genes. First 25 samples will belong to one group
  ## and the rest (15) to the other.

  mat <- matrix(stats::rnorm(40*100),40,100)
  group_m <- c(rep(1,25),rep(0,15))

  ## Note: the `rewiring_test()` works with group membership (1,2) instead of (0,1)

  results <- rewiring_test(x=mat,grp=1+group_m)

}
