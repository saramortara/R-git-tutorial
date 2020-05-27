###########################################################################
# Script para download de dados de covid-19 no município do Rio de Janeiro
# por Sara Mortara, para rladiesrio
###########################################################################

# Para instalar o pacote use:
#remotes::install_github("liibre/coronabr")

# 1. bibliotecas ####
library(coronabr)

# 2. download ####
## dados rio de janeiro usando o geocode IBGE
rj <- get_corona_br(filename = "01-rio_de_janeiro",
                    ibge_cod = "3304557")

# 3. inspeção dos dados ####
## checando os dados
head(rj)

## intervalo de tempo
range(rj$date)

## casos acumulados (inclui recuperados ~ 19 mil)
max(rj$confirmed)

## casos proporcional à populaççao
max(rj$confirmed_per_100k_inhabitants)

## obitos
max(rj$deaths)
