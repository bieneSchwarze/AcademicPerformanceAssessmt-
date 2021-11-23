####################################################################
###
### Pool and evaluate the results of the weighted regression analysis
### from the IQB Bildungstrends project
###
### 07.03.2019
### Sabine Zinn
###
####################################################################
####################################################################

library("ggplot2")
library("gridExtra")

# Pool results from regression on imputed data sets (estimated by Stata function meologit) 
A <- read.table("res_ologit_28102021_c.txt", sep="\t", fill=TRUE, dec=",")
head(A)
colnames(A) <- c("Coef.", "Std. Err.", "z", "P>|z|", "95% UC", "95% OC")
N <- 21813
m <- 20
nc <- 23 
allC <- NULL
for(k in 1:nc){
  el <- NULL
  AC <- A[seq(from=k, to=nrow(A), by=nc),]
  estC <- mean(AC[,2])
  uC <- mean(AC[,3]^2)
  bC <- 1/(m-1)*sum((AC[,2]-estC)^2)
  varC <- uC + (1+1/m)*bC
  allC <- rbind(allC, c(estC, varC)) 
}
alpha <- 0.05
ci_l <- allC[,1] - qt(1-alpha/2, N)*sqrt(allC[,2])
ci_u <- allC[,1] + qt(1-alpha/2, N)*sqrt(allC[,2]) 
Mj <- cbind(ci_l, allC[,1], ci_u)
colnames(Mj) <- c("lower CI", "estim", "upper CI")

# ICC 
B <- read.table("icc.txt", sep="\t", fill=TRUE, dec=",")
icc <- as.numeric(as.character(B[,1]))
hist(icc)
mean(icc)

# Pseudo R^2
B <- read.table("r2.txt", sep="\t", fill=TRUE, dec=",")
r2 <- as.numeric(as.character(B[,1]))
hist(r2)
range(round(r2,2))
mean(round(r2,2))
sqrt(var(round(r2,2)))

# Marginal Effects gender
M1 <- read.table("marg_gender.txt", sep="\t", fill=TRUE, dec=",")
colnames(M1) <- c("gender", "Margin", "stdErr", "z", "pval", "CIlow", "CIup")
m1 <- mean(M1[M1[,1]==0,"Margin"]); m1 # average prob for males to get mark 1
temp1 <- mean(M1[M1[,1]==0,"stdErr"]^2)
temp2 <- 1/(m-1)*sum((M1[M1[,1]==0,"Margin"] - m1)^2) 
var1 <- temp1 + (1+1/m)*temp2
sd1 <- sqrt(var1); sd1
m2 <- mean(M1[M1[,1]==1,"Margin"]); m2 # average prob for females to get mark 1
temp1 <- mean(M1[M1[,1]==1,"stdErr"]^2)
temp2 <- 1/(m-1)*sum((M1[M1[,1]==1,"Margin"] - m2)^2) 
var2 <- temp1 + (1+1/m)*temp2
sd2 <- sqrt(var2); sd2

# Marginal Effects Uni Mother
M2 <- read.table("marg_unim.txt", sep="\t", fill=TRUE, dec=",")
colnames(M2) <- c("unim", "Margin", "stdErr", "z", "pval", "CIlow", "CIup")
m1 <- mean(M2[M2[,1]==0,"Margin"]); m1 # average prob for `with mother no uni' to get mark 1
temp1 <- mean(M2[M2[,1]==0,"stdErr"]^2)
temp2 <- 1/(m-1)*sum((M2[M2[,1]==0,"Margin"] - m1)^2) 
var1 <- temp1 + (1+1/m)*temp2
sd1 <- sqrt(var1); sd1
m2 <- mean(M2[M2[,1]==1,"Margin"]); m2 # average prob for `with mother with uni' to get mark 1
temp1 <- mean(M2[M2[,1]==1,"stdErr"]^2)
temp2 <- 1/(m-1)*sum((M2[M2[,1]==1,"Margin"] - m2)^2) 
var2 <- temp1 + (1+1/m)*temp2
sd2 <- sqrt(var2); sd2

