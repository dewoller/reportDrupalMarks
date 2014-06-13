 include_graph <- function(width = 1, filename) {
     paste("\includegraphics[width=", width, "\linewidth]{",
         filename, "}", sep = "")
 }

 include_tbl <- function(width = 1, filename) {
     print(xtable(filename), table.placement = "",
         latex.environments = "", include.rownames = FALSE,
         floating = FALSE)
 }

 subfloat_graph <- function(width, dataframe, caption = "") {
     paste("\subfloat[", caption, "]{", "\begin{minipage}[h]{",
         width, "\linewidth}\centering", include_graph(width = 1,
             dataframe), "\end{minipage}}", sep = "")
 }

 subfloat_tbl <- function(width, dataframe, caption) {
     paste("\subfloat[", caption, "]{", "\begin{minipage}[h]{",
         width, "\linewidth}\centering", print(xtable(dataframe),
             file = stderr(), table.placement = "",
             latex.environments = "", include.rownames = FALSE,
             floating = FALSE), "\end{minipage}}",
         sep = "")
 }
