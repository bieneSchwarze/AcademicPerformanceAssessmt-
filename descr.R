#########################################################################
###
### Data description of the variables used in the analyses of the 
##  explanatory power of the half-year grade in German class 9 in 2015; 
##  data source IQB Bildungstrends 2015.
###
### 24.09.2019
### Sabine zinn
###
########################################################################
########################################################################

library( Hmisc)
library(readstata13)

# execute prepareData.R -> get SE_ (student data that will be imputed) 

# -------------------------------------------------------------------------------------------------------
# Functions for descriptive stats: mean & SD or proportions and missing values (weighted and unweighted)
# -------------------------------------------------------------------------------------------------------
# Variable v is continuous (metric)
getDes1 <- function(v,w){ 
  m <-  mean(v, na.rm = TRUE)
  sd <- sqrt(var(v, na.rm=TRUE))
  mw <- wtd.mean(v,w, na.rm = TRUE)
  sw <- sqrt(wtd.var(v,w, na.rm=TRUE))
  miss <- sum(is.na(v))/length(w)*100
  missw <- sum(w[is.na(v)])/sum(w)*100
  return(round(c(m,sd,miss,mw,sw,missw),2))
}
# Variable v is binary
getDes2 <- function(v,w){
  m <-  mean(v, na.rm = TRUE)
  mw <- wtd.mean(v,w, na.rm = TRUE)
  miss <- sum(is.na(v))/length(w)*100
  missw <- sum(w[is.na(v)])/sum(w)*100
  return(round(c(m,miss,mw,missw),2))  
}

# ---------------
# Student level
# ---------------
#  Orthographic competence
getDes1(SE_$wle_ortho, SE_$totwgt_deu)
# BEFKI (basic cognitive ability)
getDes1(SE_$BEFKIwle, SE_$totwgt_deu)
# 4 items on willingness to exert effort: intell. curiosity
getDes1(SE_$Sintne_b, SE_$totwgt_deu)
getDes1(SE_$Sintne_f, SE_$totwgt_deu)
getDes1(SE_$Sintne_i, SE_$totwgt_deu)
getDes1(SE_$Sintne_k, SE_$totwgt_deu)
# Gender of the student
getDes2(as.numeric(SE_$TR_geschlecht), SE_$totwgt_deu)
# Pupil has diagn. SPF (special educational needs)
getDes2(as.numeric(SE_$TR_SPF_r), SE_$totwgt_deu)
# Mother has tert. education degree
mtert <- ifelse(is.na(SE_$Bilm), NA, ifelse(SE_$Bilm %in% c(4,5),1,0))
getDes2(mtert, SE_$totwgt_deu)
# Mother has no ter. education degree
mtertNo <- ifelse(is.na(SE_$Bilm), NA, ifelse(SE_$Bilm %in% c(4,5),0,1))
getDes2(mtertNo, SE_$totwgt_deu)
# Student has migration background (yes/no)
mig <- ifelse(SE_$zhg == 0, 0, 1)
getDes2(mig, SE_$totwgt_deu)
# Interaction: student is female and has mother with university degree
uniMutterMaed <- ifelse(is.na(SE_$Bilm), NA, ifelse(SE_$Bilm %in% 5 & as.numeric(SE_$TR_geschlecht) %in% 1,1,0))
getDes2(uniMutterMaed, SE_$totwgt_deu)

# ---------------
# School Level
# ---------------
SCH <- SE_[order(SE_$IDSCH_FDZ),]
SCH <- SCH[!duplicated(SCH$IDSCH_FDZ),]
# Number of students with SPF at school
getDes1(SCH$Pspfges, SCH$totwgt_deu)
# Number of students in class
getDes1(SCH$SuS_KL, SCH$totwgt_deu)
# Proportion of girls in class
getDes2(SCH$AntMaed_KL, SCH$totwgt_deu)
# School type (Gymnasium)
GY <- ifelse(SCH$RS ==0 & SCH$HS==0 & SCH$MB==0 & SCH$GS==0,1,0)
getDes2(GY, SCH$totwgt_deu)
# Federal state, educational system "modernized structures"
getDes2(SCH$SysMod, SCH$totwgt_deu)
# Proportion of students in class with migration background
AA <- aggregate(as.numeric(SE_$zhg), list(SCH=SE_$IDSCH_FDZ), mean, na.rm=TRUE) 
table(round(AA$x,1))
getDes1(AA$x, SCH$totwgt_deu)

# ---------------
# Teacher  level
# ---------------
# take the imputed datasets (imputation only for student info, missing teacher characteristics are not imputed)
# each imputed dataset contains a teacher weight (but this differs from dataset to dataset)

# Teaching experience in years
coll <- NULL
for(iM in 1:20){
  nA <- paste(paste("impData",iM,sep = ""), ".dta", sep="")
  iD <- read.dta13(nA)
  LK <- iD[order(iD$idteach_d_FDZ1),]
  LK <- LK[!duplicated(LK$idteach_d_FDZ1),]
  coll <- cbind(coll, getDes1(LK$Llja_FDZ, LK$wgt_L))
}
apply(coll,1,mean) # Values are not very variable between imput. data sets; therefore take mean values

# Gender of teacher
coll <- NULL
for(iM in 1:20){
  nA <- paste(paste("impData",iM,sep = ""), ".dta", sep="")
  iD <- read.dta13(nA)
  LK <- iD[order(iD$idteach_d_FDZ1),]
  LK <- LK[!duplicated(LK$idteach_d_FDZ1),]
  coll <- cbind(coll, getDes1(LK$Lgender, LK$wgt_L))
}
apply(coll,1,mean) # Values are not very variable between imput. data sets; therefore take mean values

# Further training yes
coll <- NULL
for(iM in 1:20){
  nA <- paste(paste("impData",iM,sep = ""), ".dta", sep="")
  iD <- read.dta13(nA)
  LK <- iD[order(iD$idteach_d_FDZ1),]
  LK <- LK[!duplicated(LK$idteach_d_FDZ1),]
  coll <- cbind(coll, getDes1(LK$FB_diag1, LK$wgt_L))
}
apply(coll,1,mean) # Values are not very variable between imput. data sets; therefore take mean values

# Further training no
coll <- NULL
for(iM in 1:20){
  nA <- paste(paste("impData",iM,sep = ""), ".dta", sep="")
  iD <- read.dta13(nA)
  LK <- iD[order(iD$idteach_d_FDZ1),]
  LK <- LK[!duplicated(LK$idteach_d_FDZ1),]
  coll <- cbind(coll, getDes1(LK$FB_diag0, LK$wgt_L))
}
apply(coll,1,mean) # Values are not very variable between imput. data sets; therefore take mean values

# Further training unknown
coll <- NULL
for(iM in 1:20){
  nA <- paste(paste("impData",iM,sep = ""), ".dta", sep="")
  iD <- read.dta13(nA)
  LK <- iD[order(iD$idteach_d_FDZ1),]
  LK <- LK[!duplicated(LK$idteach_d_FDZ1),]
  coll <- cbind(coll, getDes1(LK$FB_diag2, LK$wgt_L))
}
apply(coll,1,mean) # Values are not very variable between imput. data sets; therefore take mean values

# Lateral entrants yes
coll <- NULL
for(iM in 1:20){
  nA <- paste(paste("impData",iM,sep = ""), ".dta", sep="")
  iD <- read.dta13(nA)
  LK <- iD[order(iD$idteach_d_FDZ1),]
  LK <- LK[!duplicated(LK$idteach_d_FDZ1),]
  coll <- cbind(coll, getDes1(LK$querFremdYes, LK$wgt_L))
}
apply(coll,1,mean)  # Values are not very variable between imput. data sets; therefore take mean values

# Lateral entrants no
coll <- NULL
for(iM in 1:20){
  nA <- paste(paste("impData",iM,sep = ""), ".dta", sep="")
  iD <- read.dta13(nA)
  LK <- iD[order(iD$idteach_d_FDZ1),]
  LK <- LK[!duplicated(LK$idteach_d_FDZ1),]
  coll <- cbind(coll, getDes1(LK$querFremdNo, LK$wgt_L))
}
apply(coll,1,mean)  # Values are not very variable between imput. data sets; therefore take mean values

# Lateral entrants unknown
coll <- NULL
for(iM in 1:20){
  nA <- paste(paste("impData",iM,sep = ""), ".dta", sep="")
  iD <- read.dta13(nA)
  LK <- iD[order(iD$idteach_d_FDZ1),]
  LK <- LK[!duplicated(LK$idteach_d_FDZ1),]
  coll <- cbind(coll, getDes1(LK$querFremdNA, LK$wgt_L))
}
apply(coll,1,mean)  # Values are not very variable between imput. data sets; therefore take mean values



