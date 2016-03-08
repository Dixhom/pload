\name{pload}
\alias{pload}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Load packages. Download them if necessary.
}
\description{
\code{pload} loads packages like \code{library} and \code{require}. The difference is that \code{pload} automatically download packages if not installed. This save labor of checking if the package is installed and typing \code{install.packages(your.package)}. This function can also download from BioConductor.
}
\usage{
pload(package.names, useBioconductor = False)
}
\arguments{
  \item{package.names}{
    the name of a package, given as a name or literal character vector.
}
  \item{useBioconductor}{
    a logical. if \code{TRUE}, packages available in BioConductor are downloaded from there.
}
}

\seealso{
\code{\link[base]{require}}

}

\examples{
pload(c("ggplot2", "dplyr", "lattice"))      # loading multiple packages
pload("Biostrings", useBioconductor = TRUE)  # download from Bioconductor


}
