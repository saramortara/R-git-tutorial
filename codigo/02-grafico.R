####################################################
# Fazendo um gráfico simples para o município do RJ
# por Sara Mortara, para rladiesrio
####################################################

# 1. bibliotecas ###
library(ggplot2)

# 2. lendo e padronizando os dados ####
## data frame com os dados
df <- read.csv("output/01-rio_de_janeiro.csv")
head(df)

## metadados
meta <- read.csv("output/metadado_corona_br.csv")
meta

## convertendo coluna com data p/ classe Date
class(df$date)
df$date <- as.Date(df$date)
class(df$date)

# 3. Fazendo um gráfico simples ####
p <- ggplot(df, aes(x = date, y = confirmed_per_100k_inhabitants)) +
  geom_line(color = "red",
            alpha = .5) +
  geom_point(color = "red") +
  scale_x_date(date_labels = "%d/%b") +
  labs(x = "Data",
       y = "Casos (por 100 mil hab.)",
       caption = paste0("Fonte: ", meta$fonte),
       title = "Casos de COVID-19 no Rio de Janeiro-RJ") +
  theme_minimal()

p

# exportando o grafico
png("figs/02-rj_dados_brutos.png", res = 300,
    width = 1400, height = 1200)
p
dev.off()
