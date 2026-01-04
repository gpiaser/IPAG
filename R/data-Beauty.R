#' Beauty and teaching evaluations
#'
#' Dataset from Hamermesh, D. S., & Parker, A. (2005),
#' "Beauty in the classroom: Instructors’ pulchritude and putative pedagogical productivity",
#' Economics of Education Review, 24(4), 369–376.
#'
#' The dataset examines the relationship between instructors' physical attractiveness
#' and student evaluation scores, controlling for demographic and class characteristics.
#'
#' @format A data frame with the following variables:
#' \describe{
#'   \item{n}{The professor’s identification number.}
#'   \item{score}{Average professor evaluation score, ranging from 1 (very unsatisfactory)
#'   to 5 (excellent).}
#'   \item{rank}{Rank of professor: teaching, tenure track, or tenured.}
#'   \item{ethnicity}{Ethnicity of professor: not minority or minority.}
#'   \item{gender}{Gender of professor: female or male.}
#'   \item{language}{Language of the school where the professor received education:
#'   English or non-English.}
#'   \item{age}{Age of the professor.}
#'   \item{cls_perc_eval}{Percentage of students in the class who completed the evaluation.}
#'   \item{cls_did_eval}{Number of students in the class who completed the evaluation.}
#'   \item{cls_students}{Total number of students enrolled in the class.}
#'   \item{cls_level}{Class level: lower or upper.}
#'   \item{cls_profs}{Number of professors teaching sections of the course in the sample:
#'   single or multiple.}
#'   \item{cls_credits}{Number of credits of the class:
#'   one credit (e.g. lab, PE) or multi credit.}
#'   \item{bty_f1lower}{Beauty rating of professor from lower-level female students
#'   (1 = lowest, 10 = highest).}
#'   \item{bty_f1upper}{Beauty rating of professor from upper-level female students
#'   (1 = lowest, 10 = highest).}
#'   \item{bty_f2upper}{Beauty rating of professor from second upper-level female students
#'   (1 = lowest, 10 = highest).}
#'   \item{bty_m1lower}{Beauty rating of professor from lower-level male students
#'   (1 = lowest, 10 = highest).}
#'   \item{bty_m1upper}{Beauty rating of professor from upper-level male students
#'   (1 = lowest, 10 = highest).}
#'   \item{bty_m2upper}{Beauty rating of professor from second upper-level male students
#'   (1 = lowest, 10 = highest).}
#'   \item{bty_avg}{Average beauty rating of the professor.}
#'   \item{pic_outfit}{Outfit of professor in picture: not formal or formal.}
#'   \item{pic_color}{Color of professor’s picture: color or black and white.}
#' }
#'
#' @usage data(Beauty)
#' @source Hamermesh, D. S., & Parker, A. (2005).
#' Beauty in the classroom: Instructors’ pulchritude and putative pedagogical productivity.
#' Economics of Education Review, 24(4), 369–376.
#' \doi{10.1016/j.econedurev.2004.07.013}
"Beauty"

