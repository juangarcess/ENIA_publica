#Activar paquetes

library(readr)
library(dplyr)


enia <-read_tsv ("base-enia-2018.csv")

#Filtrar

enia <- filter(enia, REGION==8)

#Separar pesos y dolares

eniapesos <- filter(enia, A005==4)
eniadolares <- filter(enia, A005==5)

#Crear data.frame con variables para pesos y dolares

eniapesosor <- eniapesos %>%
  group_by(CIIU4)%>% 
  summarise(valor_productos_exportados= sum(B003), reventa_de_productos=sum(B009), materias_primas_i=sum(F001), materias_primas_f= sum(F002), prod_procesoi=sum(F003),
            prod_procesof= sum(F004), prod_acabadoi= sum(F005), prod_acabadof= sum(F006), prod_reventai=sum(F007), prod_reventaf=sum(F008), otrosi=sum(F009), otrosf=sum(F010),
            total_existenciai=sum(F011), total_existenciaf=sum(F012),VBP = sum(K009), CI=sum(K010), VA=sum(K011))

eniadolaresor <- eniadolares %>%
  group_by(CIIU4)%>% 
  summarise(valor_productos_exportados= sum(B003), reventa_de_productos=sum(B009), materias_primas_i=sum(F001), materias_primas_f= sum(F002), prod_procesoi=sum(F003),
            prod_procesof= sum(F004), prod_acabadoi= sum(F005), prod_acabadof= sum(F006), prod_reventai=sum(F007), prod_reventaf=sum(F008), otrosi=sum(F009), otrosf=sum(F010),
            total_existenciai=sum(F011), total_existenciaf=sum(F012),VBP = sum(K009), CI=sum(K010), VA=sum(K011))

