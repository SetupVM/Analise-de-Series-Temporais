#relatório que mostrasse a evolução da produção e,
#em particular, a tendência de crescimento da produção
#ao longo do tempo, que é um reflexo direto da demanda exigida.

#O gerente desconfia que a produção não cresceu nos últimos
#5 anos e que, por isso, a fazenda precisa investir
# em maquinário, pessoal e captação de novos clientes.
#Os donos da fazenda, no entanto, só estão dispostos a pensar
#no assunto se acreditarem que a demanda mé-dianos próximos
#2 anos irá crescer, pelo menos, 
#5% em relação à média dos últimos 5 anos

#Lendo o arquivo leite.csv
df = read.csv("leite.csv")

#Criando a serie temporal
serie_Temp = ts(df$prod_mensal,start =c(2006,1),frequency = 12)
print(serie_Temp)#checando os dados

# Exibicao Grafica
plot(serie_Temp)
plot(serie_Temp,main = "Producao de Leite",type = "o",lwd = 1,pch = 20)
plot(decompose(serie_Temp))
plot(serie_Temp)
Suav_Med_Mov = ma(serie_Temp,order = 12)
lines(Suav_Med_Mov,lwd = 2, col = "blue")

abline(h=mean(serie_Temp),lty=2,lwd=2,col="blue")

#Analise dos ultimos 5 anos

df_Win = window(serie_Temp,start = c(2015,1),end = c(2019,12))
print(df_Win)
plot(df_Win, main = "Producao de 2015 a 2020")
ndiffs(df_Win)

#ndiffs = 0, ou seja, a serie e estacionaria
#entao nao houve crescimento no ultimos 5 anos

#Previsao para os proximos 2 anos

model = auto.arima(serie_Temp,stepwise = FALSE, trace = TRUE)
print(model)
model2 = forecast(model, h =24)
plot(model2)



#Verificando o crescimento

media = mean(df_Win) # media dos ultimos 5 anos
print(media)

media2 = mean(model2$mean)
print(media2)

delta = (media2 - media)/media2
print(delta)

#Como o aumento percentual deu maior que 5%, deve-se considerar o investimento 
# em maquinário, pessoal e captação de novos clientes.
