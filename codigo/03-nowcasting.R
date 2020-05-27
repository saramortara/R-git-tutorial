###########################################################################
# Script leitura e comparação de dados notificados e corrgidos
# por Sara Mortara, para rladiesrio
###########################################################################

# codido adaptado do observatorio COVID BR, disponivel em:
## https://github.com/covid19br/covid19br.github.io/blob/master/_src/fct/plot.nowcast.acumulado.R

#1. bibliotecas
library(dplyr)
library(ggplot2)

nowcasting <- read.csv("dados/nowcasting_acumulado_covid_2020_05_18.csv")

plot <- nowcasting %>%
  mutate(data = as.Date(data)) %>%
  ggplot(aes(x = data)) +
  # linha
  geom_line(aes(y = now.mean.c, color = "Corrigidos"), size = 1) +
  # ic
  geom_ribbon(aes(ymin = now.low.c.proj, ymax = now.upp.c.proj), fill = "lightgrey") +
  # linha projecao
  geom_line(aes(y = now.mean.c.proj, color = "Corrigidos"), lty = "longdash") +
    # linha
  geom_line(aes(y = not.mean.c, color = "Notificados"), size = 1) +
  # ic
  geom_ribbon(aes(ymin = not.low.c.proj, ymax = not.upp.c.proj), fill = "lightgrey") +
  # linha projecao
  geom_line(aes(y = not.mean.c.proj, color = "Notificados"), lty = "longdash") +
  scale_x_date(date_labels = "%d/%b") +
  scale_color_discrete(name = "") +
  labs(x = "Dia do primeiro sintoma",
       y = "Número acumulado de casos",
       caption = "Fonte: SIVEP-Gripe, dados processados por OBSERVATÓRIO COVID-19 BR") +
  theme_minimal() +
  theme(legend.position = c(0.8, 0.2))

plot
