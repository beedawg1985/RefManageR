% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ReadPubMed.R
\name{LookupPubMedID}
\alias{LookupPubMedID}
\title{Retrieve PubMed ID's for a BibEntry object}
\usage{
LookupPubMedID(bib, index)
}
\arguments{
\item{bib}{a bibentry object}

\item{index}{indices specifying which entries of \code{bib} will be
searched for.  If \code{missing}, all entries
are searched for.}
}
\value{
a BibEntry object - \code{bib} with additional eprinttype and eprint
fields when the search is successful
for an entry.
}
\description{
Uses the NCBI E-utilities to to search for PubMed ID's for citations
stored in a BibEntry object.
}
\details{
For each entry a citation string is created using the fields
journaltitle/journal, date/year,
  volume, pages, and author; and these strings are then used to search the
NCBI database for PubMed ID's.

  If an ID is found for an entry, the entry is updated so that the eprinttype
field is assigned the value
  \dQuote{pubmed} and the eprint field is assigned the ID.
}
\examples{
if (interactive() && !httr::http_error("https://eutils.ncbi.nlm.nih.gov/")){
  file.name <- system.file("Bib", "RJC.bib", package = "RefManageR")
  bib <- ReadBib(file.name)
  LookupPubMedID(bib[[101:102]])
}
}
\seealso{
Other pubmed: 
\code{\link{GetDOIs}()},
\code{\link{GetPubMedByID}()},
\code{\link{GetPubMedRelated}()},
\code{\link{ReadCrossRef}()},
\code{\link{ReadPubMed}()}
}
\concept{pubmed}
\keyword{database}
