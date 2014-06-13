library(brew)
library(ggplot2)
mdata=read.csv("~/mydoc/teaching/hif/students/sql/submissions_marks.csv")
gdata=read.csv("~/mydoc/teaching/hif/students/sql/submissions_groups.csv")

groups=levels(gdata$Group)
 # for each group
# make up a Marks page for each group

mkpdf = function(group) {
    
    
    #report.brew expects: reportList, title, introduction
    reportList=list()
    reportList[[1]] = mdata[mdata$Group==group,]
    title=group
    introduction="hello"
    texFile = paste(group, ".tex", sep="")
    brew("report.brew", texFile)
    texi2dvi(texFile, pdf = TRUE)
}
