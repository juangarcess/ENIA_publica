
library(tidyverse)

library(rodbc)


setwd("C:/Users/jugarces/OneDrive - Instituto Nacional de Estadisticas/ENIA publica 2018")

base_enia_2018 <- read.delim("C:/Users/jugarces/OneDrive - Instituto Nacional de Estadisticas/ENIA publica 2018/base-enia-2018.csv")


# conexion_access_a_1<-odbcConnectAccess("C:/Users/jugarces/OneDrive - Instituto Nacional de Estadisticas/ENIA publica 2018/base-enia-2018.accdb")
# 

# library(mdbr)
# 
# acc<-read_mdb("base-enia-2018.accdb")
# 
# a<-mdb_tables("base-enia-2018.accdb")
# 
# c<-mdb_tables(ex <- mdb_example())
# 
# ls("package:mdbr")


###VEAMOS CUANTAS PANADERIAS HAY

PANADERIAS<- filter(base_enia_2018, REGION==8 & CIIU4 ==1071)

names(base.enia.2018
      )

class(base.enia.2018$REGION)

class(base.enia.2018)