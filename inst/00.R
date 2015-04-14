
library(devtools)
load_all()
document()
#devtools::install()

library(dimpler)

data <- tblpkg::sampleData('CN')

data <- tblpkg::sampleData('DN')

av <- availableDimples("CN")

do.call(av[2],list(data))
dimpleBarHorCN(data, width = NULL, height= NULL)

dimpler(data, name = "dimpleBarHorCCN")





