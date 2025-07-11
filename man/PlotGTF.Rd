% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PlotGTF.R
\name{PlotGTF}
\alias{PlotGTF}
\title{Barplot of Gene Biotype Annotations from a GTF File Matched to a Seurat Object}
\usage{
PlotGTF(obj, gtf)
}
\arguments{
\item{obj}{A gene expression matrix with gene names as rownames or Seurat object.}

\item{gtf}{A data frame representing gene annotations (e.g., parsed GTF),
which must contain columns with gene names and gene biotypes.}
}
\value{
A \code{ggplot2} barplot showing counts of gene biotypes for genes in \code{obj}.
}
\description{
This function filters gene biotype annotations from a GTF-like data frame
to include only genes present in the provided gene expression object,
then plots the distribution of gene biotypes as a barplot.
}
\details{
This function assumes that \code{obj} contains gene names as rownames.
}
\examples{
\dontrun{
  p = PlotGTF(seurat_object@assays$RNA@counts, gtf_annotation_df)
  print(p)

  p = PlotGTF(seurat_object, gtf_annotation_df)
  print(p)
}

}
