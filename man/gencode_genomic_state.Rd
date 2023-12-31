% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gencode_genomic_state.R
\name{gencode_genomic_state}
\alias{gencode_genomic_state}
\title{Build a GenomicState object for Gencode TxDb objects}
\usage{
gencode_genomic_state(txdb)
}
\arguments{
\item{txdb}{A \link[GenomicFeatures:TxDb-class]{GenomicFeatures::TxDb} object built with
\code{\link[=gencode_txdb]{gencode_txdb()}}.}
}
\value{
A GenomicState object with the gene symbols as built using
\code{\link[derfinder:makeGenomicState]{derfinder::makeGenomicState()}}.
}
\description{
Based on a \code{TxDb} object built by \code{\link[=gencode_txdb]{gencode_txdb()}} this function builds a
\code{GenomicState} object which you can then use with
\code{\link[derfinder:annotateRegions]{derfinder::annotateRegions()}}. This information is then used by packages
like \code{derfinderPlot}.
}
\details{
Note that not all genes will have symbols as many will be \code{NA}.
}
\examples{

## Start from scratch if you want:
\dontrun{
txdb_v31_hg19_chr21 <- gencode_txdb("31", "hg19", chrs = "chr21")
}

## or read in the txdb object for hg19 chr21 from this package
txdb_v31_hg19_chr21 <- AnnotationDbi::loadDb(
    system.file("extdata", "txdb_v31_hg19_chr21.sqlite",
        package = "GenomicState"
    )
)

## Now build the GenomicState object
gs_v31_hg19_chr21 <- gencode_genomic_state(txdb_v31_hg19_chr21)

## Explore the result
gs_v31_hg19_chr21
}
\references{
Based on code for the \code{brainflowprobes} package at:
\url{https://github.com/LieberInstitute/brainflowprobes/blob/devel/data-raw/create_sysdata.R}
}
\seealso{
\code{\link[=gencode_txdb]{gencode_txdb()}} \code{\link[=gencode_annotated_genes]{gencode_annotated_genes()}}
}
\author{
Leonardo Collado-Torres
}
