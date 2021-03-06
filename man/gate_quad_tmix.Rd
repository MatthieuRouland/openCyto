% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gating-functions.R
\name{gate_quad_tmix}
\alias{gate_quad_tmix}
\alias{quadGate.tmix}
\title{quadGate based on flowClust::tmixFiler}
\usage{
gate_quad_tmix(fr, channels, K, usePrior = "no", prior = list(NA),
  quantile1 = 0.8, quantile3 = 0.8, trans = 0, plot = FALSE, ...)

quadGate.tmix(fr, channels, K, usePrior = "no", prior = list(NA),
  quantile1 = 0.8, quantile3 = 0.8, trans = 0, plot = FALSE, ...)
}
\arguments{
\item{fr}{\code{flowFrame}}

\item{channels}{\code{character} vector specifies two channels}

\item{K}{see \link{gate_flowclust_2d}}

\item{usePrior}{see \link{gate_flowclust_2d}}

\item{prior}{see \link{gate_flowclust_2d}}

\item{quantile1}{\code{numeric} specifies the  quantile level(see 'level' in \link{flowClust}) for the first quadrant (x-y+)}

\item{quantile3}{\code{numeric} specifies the  quantile level see 'level' in \link{flowClust} for third quadrant (x+y-)}

\item{trans}{see \link{gate_flowclust_2d}}

\item{plot}{logical whether to plot flowClust clustering results}

\item{...}{other arguments passed to \link{flowClust}}
}
\value{
a \code{filters} object that contains four \code{polygonGate}s following the order of (-+,++,+-,--)
}
\description{
This gating method identifies two quadrants (first, and third quadrants) by fitting the data with tmixture model.
It is particually useful when the two markers are not well resolved thus the regular quadGate method
based on 1d gating will not find the perfect cut points on both dimensions.
}
