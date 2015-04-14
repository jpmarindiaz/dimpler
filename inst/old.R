

dimpler(data, "dimpleBubble-cccn")
dimpler(data[c(3,1,2,4)], "dimpleBubble-cccn")
dimpler(data[c(3,1,2,4)], "dimplePie-cccn")
dimpler(data, "dimplePie-cccn")
dimpler(data[c(3,2,1,4)], "dimplePie-cccn")


data <- read.csv("inst/data/dataCCC.csv")
dimpler(data, "dimplePoints-ccc")
dimpler(data, "dimpleMatrix-ccc")
dimpler(data[c(3,2,1)], "dimpleMatrix-ccc")
dimpler(data[c(2,3,1)], "dimpleMatrix-ccc")
dimpler(data[c(3,1,2)], "dimpleMatrix-ccc")
dimpler(data[c(1,3,2)], "dimpleMatrix-ccc")
dimpler(data[c(1,2,3)], "dimpleMatrix-ccc")
dimpler(data[c(2,1,3)], "dimpleMatrix-ccc")




data <- read.csv("inst/data/dataCC.csv")
dimpler(data,"dimpleBarVer-cc")

data <- ddply(data, .(Cat2,Cat1), nrow)

dimpler(data,"dimpleAreaHorFac-ccn")
dimpler(data,"dimpleAreaVerFac-ccn")
dimpler(data,"dimpleAreaHor-ccn")
dimpler(data,"dimpleAreaHorCard-ccn")
dimpler(data,"dimpleAreaHorNrm-ccn")
dimpler(data,"dimpleAreaHorNrmCard-ccn")
dimpler(data,"dimpleAreaVer-ccn")
dimpler(data,"dimpleAreaVerCard-ccn")
dimpler(data,"dimpleAreaVerNrm-ccn")
dimpler(data,"dimpleAreaVerNrmCard-ccn")

data <- read.csv("inst/data/dataCCN1.csv")

dimpler(data,"dimpleAreaHorFac-ccn")
dimpler(data,"dimpleAreaVerFac-ccn")
dimpler(data,"dimpleAreaHor-ccn")
dimpler(data,"dimpleAreaHorCard-ccn")
dimpler(data,"dimpleAreaHorNrm-ccn")
dimpler(data,"dimpleAreaHorNrmCard-ccn")
dimpler(data,"dimpleAreaVer-ccn")
dimpler(data,"dimpleAreaVerCard-ccn")
dimpler(data,"dimpleAreaVerNrm-ccn")
dimpler(data,"dimpleAreaVerNrmCard-ccn")

dimpler(data,"dimpleScatterHorGrp-ccn")
dimpler(data, "dimpleBarHorMekko-ccn")
dimpler(data, "dimpleBarHorStk-ccn")
dimpler(data, "dimpleBarHorStkNrm-ccn")
dimpler(data, "dimpleBarHorGrp-ccn")
dimpler(data,"dimpleScatterVerGrp-ccn")
dimpler(data, "dimpleBarVerMekko-ccn")
dimpler(data, "dimpleBarVerStk-ccn")
dimpler(data, "dimpleBarVerStkNrm-ccn")
dimpler(data, "dimpleBarVerGrp-ccn")



data <- read.csv("inst/data/dataCN.csv")

dimpler(data, "dimpleAreaHor-cn")
dimpler(data, "dimpleAreaVer-cn")
dimpler(data, "dimplePointsHor-cn")
dimpler(data, "dimplePointsVer-cn")
dimpler(data, "dimpleLineHor-cn")
dimpler(data, "dimpleLineVer-cn")
dimpler(data, "dimpleStepHor-cn")
dimpler(data, "dimpleStepVer-cn")
dimpler(data, "dimpleStepAreaHor-cn")
dimpler(data, "dimpleStepAreaVer-cn")


dimpler(data, "dimpleRing-cn")
dimpler(data, "dimplePie-cn")
dimpler(data, "dimpleBarHor-cn")
dimpler(data, "dimpleBarVer-cn")




data <- read.csv("inst/data/dataCCN1.csv")
dimpler(data,"dimpleAreaHorFac-ccn")
dimpler(data,"dimpleScatterHorGrp-ccn")
dimpler(data, "dimpleBarHorMekko-ccn")
dimpler(data, "dimpleBarHorStk-ccn")
dimpler(data, "dimpleBarHorStkNrm-ccn")
dimpler(data, "dimpleBarHorGrp-ccn")
dimpler(data,"dimpleScatterVerGrp-ccn")
dimpler(data, "dimpleBarVerMekko-ccn")
dimpler(data, "dimpleBarVerStk-ccn")
dimpler(data, "dimpleBarVerStkNrm-ccn")
dimpler(data, "dimpleBarVerGrp-ccn")







data <- read.csv("inst/data/dataOCN.csv")
dimpler(data, "dimpleBarVer-ocn")



data <- read.csv("inst/data/dataOCN.csv")
dimplerBarVer(data)

data <- read.csv("inst/data/dataCCN.csv")
dimplerBarVerGrp(data)

