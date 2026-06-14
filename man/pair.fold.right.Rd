\name{pair.fold.right}
\alias{pair.fold.right}
\title{pair-fold-right from SRFI-1.}
\usage{
  pair.fold.right(f, nil, ...)
}
\arguments{
  \item{f}{function to apply over the list-tails}

  \item{nil}{the default value}

  \item{...}{the lists whose tails fold over}
}
\value{
  The result of folding \code{f} over the successive tails (pairs) of
  the input lists; \code{nil} if the lists are empty.
}
\description{
  pair-fold-right from SRFI-1.
}

