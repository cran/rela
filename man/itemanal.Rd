\name{itemanal}

\alias{itemanal}

\title{Item analysis function}

\description{This function enables the user to evaluate the functioning of two or more items as a 
coherent scale. Among the traditionally used Cronbach's Alpha the function also produces standardized estimates 
as well as Duhachek and Iacobucci's (2004) proposed standrad errors and respective confidence intervals for the
reliability coefficients. Further, the function provides a bootstrap estimate of the convidance interval of both 
the regular and standardized alpha values. The function will produce three plots: A density plot of the alpha and 
standardized alpha bootstrap simulations, a line plot of the "if item deleted" alpga values by each item and a 
star plot for all of the items for their respective "if item deleted" scale values.}

\usage{itemanal(object, SE.par = 1.96, boots = 1000)}

\arguments{

	\item{object}{Numeric dataset (usually a coerced matrix from a prior data frame) containing all items of the scale. The dataset is arranged observations (rows) by measure items (columns). }

	\item{SE.par}{Confidence interval corresponding Z-score. By default set to the 95 \% confidence interval Z-score of 1.96. }

	\item{boots}{Number of boot strap samples computed. By default 1,000 simulations are estimated. }
}

\details{ The function is sensitive to the how the dataset was compiled. Using the cbind function will often return a matirx that appears numeric but in reality functions as a numeric compiled list. If system error messages occur try transforming the dataset using as.matrix(data.frame(your.dataset)). }

\value{

Output consists of a list with the following values:\cr

	\item{Variables}{General information about the entered items such as item type, number of cases used in the analysis, minimum, maximum values and item sum. }

	\item{Tendency}{Contains the measures of central tendancy: The respective item mean, median, standard deviation (SD), standard error of the mean (SE.mean) , lower and upper values of a 95 \% confidence interval of the mean and item variance. }

	\item{Skewness}{Skewness, standard error of the skew, lower and upper values of the skew. }

	\item{Kurtosis}{Kurtosis, standard error of kurtosis as well as its respective 95 \% confidence interval values. }

	\item{Covariance}{The covariance matrix of all items in the dataset. }

	\item{Correlation}{The correlation matrix of all submitted items. }

	\item{Alpha}{The number of items in the scale as well as the covariance based Cronbach's alpha estimate. }

	\item{Conf.Alpha}{Standard error of Cronbach's alpha with the associated lower and upper bound confidence interval values. }

	\item{Bootstrap.Simmulations}{The regular (covariance based) alpha bootstrap simulated estimates. }

	\item{Alpha.Bootstrap}{Bootstrap mean, standard error and confidence interval lower and upper limits. }

	\item{Std.Alpha}{The number of items in the scale as well as the correlation based Cronbach's alpha estimate. }

	\item{Conf.Std.Alpha}{Standard error of the standardized Cronbach's alpha with the associated lower and upper bound confidence interval values. }

	\item{Bootstrap.Std.Simmulations}{The standardized (correlation based) alpha bootstrap simulated estimates. }

	\item{Alpha.Std.Bootstrap}{Standardized bootstrap mean, standard error and confidence interval lower and upper limits. }

	\item{Scale.Stats}{Changes in scale statistics upon deletion of any one item in the scale. Contains scale mean and variance. }

	\item{Alpha.Stats}{Changes in the scale's reliability estimate alpha upon deletion of any one item. Contains, corrected total item correlation, squared multiple correlation, adjusted alpha statistic without given item. }

	\item{call}{Submitted function call. }
}

\references{
Cronbach, L. J. (1951). Coefficient alpha and the internal structure of tests. \emph{Psychometrika, 16(3)}, 297-334. \cr
\cr
Duhachek, A. & Iacobucci, D. (2004). Alpha's standard error (ASE): An accurate and precise confidence interval estimate. \emph{Journal of Applied Psychology, 89(5)}, 792-808. \cr
\cr
Kim, J., & Mueller, C. W. (1978). \emph{Introduction to factor analysis: What it is and how to do it}. SAGE Publications: Newbury Park, CA. \cr
\cr
Nunnally, J. C. & Bernstein, I. H. (1994). \emph{Psychometric theory} (3 ed.). McGraw-Hill: New York, NY. \cr
\cr
Kaiser, H. F. & Cerny, B. A. (1979). Factor analysis of the image correlation matrix. \emph{Educational and Psychological Measurement}, 39, 711-714.\cr
\cr
Pett, M. A., Lackey, N. R., & Sullivan, J. J. (2003). \emph{Making sense of factor analysis: The use of factor analysis for instrument development in health care research}. SAGE Publications: Thousand Oaks, CA.}

\author{Michael Chajewski ( \url{http://www.chajewski.com} )}

\note{Under the current version of this function/package missing data is deleted listwise. Subsequently only full cases are used in determining scale reliability.}

\examples{

library(rela)

Belts <- Seatbelts[,1:7]
Belts.item <- itemanal(Belts)
Belts.item

Belts2 <- Belts[,-5]
Belts2 <- Belts2[,-5] 
Belts.item2 <- itemanal(Belts2)
Belts.item2
}

\concept{item analysis}
\concept{rela}
\concept{reliability}
\concept{cronbach}
\concept{chajewski}
\concept{duhachek}
\concept{scale}

\keyword{manip}
\keyword{misc}