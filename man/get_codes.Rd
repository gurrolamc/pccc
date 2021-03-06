% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{get_codes}
\alias{get_codes}
\title{Get (view) Diagnostic and Procedure Codes}
\usage{
get_codes(icdv)
}
\arguments{
\item{icdv}{and integer value specifying ICD verion.  Accepted values are 9
or 10.}
}
\value{
A matrix of character vectors.  Rows are the categories and columns for
diagnostic and procedure codes.
}
\description{
View the ICD, verion 9 or 10, for the Complex Chronic Conditions (CCC)
categories.
}
\details{
The CCC categories for diagnostic and procedure codes are:
 \tabular{lcccc}{
 category        \tab \code{dx} \tab \code{dx_fixed} \tab \code{pc} \tab \code{pc_fixed} \cr
 neuromuscul     \tab      X    \tab      X           \tab     X    \tab        \cr
 cvd             \tab      X    \tab      X           \tab     X    \tab        \cr
 respiratory     \tab      X    \tab      X           \tab     X    \tab        \cr
 renal           \tab      X    \tab                  \tab     X    \tab        \cr
 gi              \tab      X    \tab                  \tab     X    \tab        \cr
 hemato_immu     \tab      X    \tab                  \tab     X    \tab        \cr
 metabolic       \tab      X    \tab                  \tab     X    \tab      X \cr
 congeni_genetic \tab      X    \tab                  \tab          \tab        \cr
 malignancy      \tab      X    \tab                  \tab     X    \tab        \cr
 neonatal        \tab      X    \tab                  \tab          \tab        \cr
 tech_dep        \tab      X    \tab                  \tab     X    \tab        \cr
 transplant      \tab      X    \tab                  \tab     X    \tab        \cr
 }

The ICD codes were taken from the SAS macro provided by the reference paper.
}
\examples{
# All ICD 9 codes for CCC
get_codes(9)

# All ICD 10 codes for CCC
get_codes(10)

# Get all the codes for ICD 9 related to malignancy
get_codes(9)["malignancy", ] 
}
\references{
Feudtner C, et al. Pediatric complex chronic conditions classification system
version 2: updated for ICD-10 and complex medical technology dependence and
transplantation, BMC Pediatrics, 2014, 14:199, DOI: 10.1186/1471-2431-14-199
}
