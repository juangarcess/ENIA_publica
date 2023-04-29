

###Ejemplos ENIA DEFINITIVO


library(tidyverse)

base_enia_2018 <- read.delim("~/ENIA 2023 UBB/ENIA 2018/base-enia-2018.csv")

##Veamos las caracteristicas de algunas variables

str(base_enia_2018)


##nombres de las variables
names(base_enia_2018)

## Moneda en que lleva la contabilidad

##Según el descriptor de variables, la pregunta sobre moneda en que lleva contabiliudad es `A005`.

##Veamos qué resulta

moneda_contabilidad<-group_by(base_enia_2018, A005)
moneda_contabilidad<-summarise(moneda_contabilidad, total_casos=n())
moneda_contabilidad



##De acuerdo con el formulario, el código 4 es pesos y el código 5 dolaeres, 
##Analicemos esto en el caso de Biobío.


enia_biobio<-filter(base_enia_2018, REGION==8)

moneda_contabilidad_biobio<-group_by(enia_biobio, A005)

moneda_contabilidad_biobio<-summarise(moneda_contabilidad_biobio, total_casos=n())

moneda_contabilidad_biobio



## Valor agregado, Valor Bruto y Consumo Intermedio

###Agrupamos por CIIU4 y A005
enia_biobio<-group_by(enia_biobio, CIIU4, A005)

valor_agregado<-summarise(enia_biobio, VBP=sum(K009), CI=sum(K010), VA=sum(K011))

View(valor_agregado
     )



#### CASO MIP 1996

#Filtrar

base_base_enia_2018_2018 <- filter(base_enia_2018, REGION==8)

#Separar pesos y dolares

base_enia_2018pesos <- filter(base_enia_2018, A005==4)
base_enia_2018dolares <- filter(base_enia_2018, A005==5)

#Crear data.frame con variables para pesos y dolares

base_enia_2018pesosor <- base_enia_2018pesos %>%
  group_by(CIIU4)%>% 
  summarise(valor_productos_exportados= sum(B003), reventa_de_productos=sum(B009), materias_primas_i=sum(F001), materias_primas_f= sum(F002), prod_procesoi=sum(F003),
            prod_procesof= sum(F004), prod_acabadoi= sum(F005), prod_acabadof= sum(F006), prod_reventai=sum(F007), prod_reventaf=sum(F008), otrosi=sum(F009), otrosf=sum(F010),
            total_existenciai=sum(F011), total_existenciaf=sum(F012),VBP = sum(K009), CI=sum(K010), VA=sum(K011))

base_enia_2018dolaresor <- base_enia_2018dolares %>%
  group_by(CIIU4)%>% 
  summarise(valor_productos_exportados= sum(B003), reventa_de_productos=sum(B009), materias_primas_i=sum(F001), materias_primas_f= sum(F002), prod_procesoi=sum(F003),
            prod_procesof= sum(F004), prod_acabadoi= sum(F005), prod_acabadof= sum(F006), prod_reventai=sum(F007), prod_reventaf=sum(F008), otrosi=sum(F009), otrosf=sum(F010),
            total_existenciai=sum(F011), total_existenciaf=sum(F012),VBP = sum(K009), CI=sum(K010), VA=sum(K011))


