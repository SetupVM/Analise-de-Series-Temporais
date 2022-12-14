# CM3050 - Encontro 03 - Cria??o de s?ries temporais e scripts
# EDI??O MEDIADA POR TECNOLOGIA - 2o SEMESTRE DE 2020
# COMANDOS E EXEMPLOS MOSTRADOS NO MATERIAL

# Exemplos de cria??o de s?ries temporais
D1 <- sample(10:200,50) # D1 = 50 valores aleat?rios entre 10 e 200
D2 <- 10*(1:7)    # D2 = [ 10  20  30  40  50  60  70 ]
D3 <- c(2:6,6:2)  # D3 = [ 2  3  4  5  6  6  5  4  3  2 ]

S1 <- ts(D1,start = 1,end = length(D1),frequency = 1)
print(S1) # Exibe a s?rie no console (= nome da vari?vel + ENTER)
plot(S1)	# Tra?a o gr?fico da s?rie

S2 <- ts(D2,start = 10,frequency = 1)	# Sem valor de "end"
plot(S2)

S3 <- ts(D3)  # Quais s?o os valores adotados para os par?metros?
plot(S3)

# =========================================================== #
# Exemplos de s?ries temporais anuais com medi??es mensais
V <- 1:120    # 120 valores (de 1 a 120)

# S?rie mensal: de janeiro de 2010 a dezembro de 2019
S <- ts(V,start = c(2010,1),end = c(2019,12),frequency = 12)
print(S) 	# Exibe a s?rie no console

# Altera??o: in?cio em mar?o de 2010 (o que ocorre no final?)
S <- ts(V,start = c(2010,3),end = c(2019,12),frequency = 12)
print(S) 	# Exibe a s?rie no console

# Altera??o: de janeiro de 2010 a dezembro de 2020
S <- ts(V,start = c(2010,1),end = c(2020,12),frequency = 12)
print(S) 	# Exibe a s?rie no console

# =========================================================== #
# Exemplos de s?ries anuais com medi??es semanais e trimestral
S1 <- ts(1:52,start = c(2010,1),frequency = 52)
S2 <- ts(1:53,start = c(2010,1),frequency = 52)
S3 <- ts(1:20,start = c(2010,1),frequency = 4)

# Exibi??o no console + gr?ficos
print(S1)		# Exibe a s?rie no console
print(S2)
print(S3)
plot(S1,main = "S?rie semanal com 52 semanas")
plot(S2,main = "S?rie semanal com 53 semanas")
plot(S3,main = "S?rie com 20 trimestres")
