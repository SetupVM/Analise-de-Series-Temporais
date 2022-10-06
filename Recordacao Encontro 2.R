# Recordando o conteúdo do Encontro 02:
# Medidas de posição e de dispersão.
D <- c(56,45,44,40,39,40,38,38,37,39,36,34,36,35,38)

mean(D)  # Média amostral
sd(D)    # Desvio padrão (variância: função var)
CV <- 100*sd(D)/mean(D)  # Calcula o coeficiente de variação (CV%)
CV   # Exibe o valor do CV% no console ("nome da variável + ENTER")

min(D)		# Valor mínimo
max(D)		# Valor máximo
range(D)	# Amplitude: retorna um vetor!

# =========================================================== #
# Encontro 02: gráfico de linhas de um vetor (type = "o")
plot(D,type = "o")

# Insere uma linha horizontal, representando a duração média
# IMPORTANTE: o gráfico de pontos deve estar visível em tela!
# Opções: h = altura da linha no eixo y
#         lty = tipo de linha (2 = tracejado)
#         lwd = espessura da linha (padrão = 1)
#         col = cor da linha
abline(h = mean(D),lty = 2,lwd = 2,col = "blue")
