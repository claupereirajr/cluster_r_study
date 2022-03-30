#iPackges utilizados
iPackges <- c("readr","metan")

if(sum(as.numeric(!iPackges %in% installed.packages())) != 0){
  instalador <- iPackges[!iPackges %in% installed.packages()]
  for(i in 1:length(instalador)) {
    install.packages(instalador, dependencies = T)
    break()}
  sapply(iPackges, require, character = T) 
} else {
  sapply(iPackges, require, character = T) 
}

pea <- read_csv("pea.csv")
# View(pea)


corrl <- corr_coef(pea[,-1:-2])
plot(corrl)
