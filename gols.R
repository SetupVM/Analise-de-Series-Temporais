D <- c(44,44,36,46,27,29,17,29,27)		# Dados: sem 2019!
S <- ts(D,start = 2010,frequency = 1)	# Cria a série
print(S)  # Exibe a série (apenas para conferência)

# Traça o gráfico e as linhas pedidas
plot(S,main = "GOLS DE FALTA NA DÉCADA",type = "o", xlab = "Ano", ylab = "Gols")
abline(h = min(S),lty = 2,lwd = 2)  # Mínimo
abline(h = max(S),lty = 2,lwd = 2)  # Máximo
abline(h = mean(S),col = "blue",lty = 2,lwd = 2)	 # Média