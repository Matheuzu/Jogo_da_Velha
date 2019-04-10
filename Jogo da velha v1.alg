Algoritmo "jogo-da-velha"
// Disciplina  : [Linguagem e Lógica de Programação]
// Descrição   : Esse é um programa que simula um jogo da velha, feito para aprendizado.
// Autor(a)    : Matheus Paiva Angarola
// Data atual  : 07/04/2019
Var
// Seção de Declarações das variáveis 
nome, nome2, palavra, simbolo, simbolo1, simbolo2 :caractere
es, es1, jogar, x, a1, y, resto, A, B, C:inteiro
ganho: vetor [1..7] de logico
quemganhou: vetor [1..7] de logico
velha: logico
espacos: vetor [1..9] de caractere


procedimento engine()
inicio
      Limpatela
      escreval("--------------------------------------------")
      escreval("|        Bem Vindo ao Jogo da Velha        |")
      escreval("--------------------------------------------")
      escreval("O Participante ",nome," é X ou O? [1]X [2]O")
      escreva("-> ")
      leia(es1)
      escreval(" ")

      se es1 = 1 entao
            simbolo1 <- "X"
            simbolo2 <- "O"
            Escreval("- O participante ",nome," é ", simbolo1)
            Escreval("- O participante ",nome2," é ", simbolo2)
      senao
            simbolo1 <- "O"
            simbolo2 <- "X"
            Escreval("- O participante ",nome," é ", simbolo1)
            Escreval("- O participante ",nome2," é ", simbolo2)

      fimse


      timer 5000
      timer 0
      Limpatela
      espacos[1] <- "1"
      espacos[2] <- "2"
      espacos[3] <- "3"
      espacos[4] <- "4"
      espacos[5] <- "5"
      espacos[6] <- "6"
      espacos[7] <- "7"
      espacos[8] <- "8"
      espacos[9] <- "9"
      escreval("--------------------------------------------")
      escreval("|        Bem Vindo ao Jogo da Velha        |")
      escreval("--------------------------------------------")
      escreval(" ")
      escreval("               ",espacos[1]," | ",espacos[2]," | ",espacos[3]," ")
      escreval("              ---|---|---")
      escreval("               ",espacos[4]," | ",espacos[5]," | ",espacos[6]," ")
      escreval("              ---|---|---")
      escreval("               ",espacos[7]," | ",espacos[8]," | ",espacos[9]," ")

      escreval(" ")

      enquanto x < 9 faca
      resto <- y MOD 2
         se resto = 0 entao
            escreval(nome,", onde você quer jogar?")
            escreva("-> ")
            leia(a1)
            simbolo <- simbolo1
         senao
            escreval(nome2,", onde você quer jogar?")
            escreva("-> ")
            leia(a1)
            simbolo <- simbolo2
         fimse

         se a1 = 1 entao
            espacos[1] <- simbolo
         fimse
         se a1 = 2 entao
            espacos[2] <- simbolo
         fimse
         se a1 = 3 entao
            espacos[3] <- simbolo
         fimse
         se a1 = 4 entao
            espacos[4] <- simbolo
         fimse
         se a1 = 5 entao
            espacos[5] <- simbolo
         fimse
         se a1 = 6 entao
            espacos[6] <- simbolo
         fimse
         se a1 = 7 entao
            espacos[7] <- simbolo
         fimse
         se a1 = 8 entao
            espacos[8] <- simbolo
         fimse
         se a1 = 9 entao
            espacos[9] <- simbolo
         fimse

         limpatela
         escreval("--------------------------------------------")
         escreval("|        Bem Vindo ao Jogo da Velha        |")
         escreval("--------------------------------------------")
         escreval(" ")
         escreval("               ",espacos[1]," | ",espacos[2]," | ",espacos[3]," ")
         escreval("              ---|---|---")
         escreval("               ",espacos[4]," | ",espacos[5]," | ",espacos[6]," ")
         escreval("              ---|---|---")
         escreval("               ",espacos[7]," | ",espacos[8]," | ",espacos[9]," ")

         escreval(" ")

         ganho[1] <- (espacos[1] = espacos[5]) e (espacos[5] = espacos[9])
         ganho[2] <- (espacos[1] = espacos[2]) e (espacos[2] = espacos[3])
         ganho[3] <- (espacos[1] = espacos[4]) e (espacos[4] = espacos[7])
         ganho[4] <- (espacos[4] = espacos[5]) e (espacos[5] = espacos[6])
         ganho[5] <- (espacos[3] = espacos[5]) e (espacos[5] = espacos[7])
         ganho[6] <- (espacos[3] = espacos[6]) e (espacos[6] = espacos[9])
         ganho[7] <- (espacos[2] = espacos[5]) e (espacos[5] = espacos[8])

          se ganho[1] = Verdadeiro entao
             quemganhou[1] <- (espacos[1] = simbolo1)
             se quemganhou[1] = verdadeiro entao
                escreval(nome, "ganhou o jogo!")
             senao
               escreval(nome2, "ganhou o jogo!")
             fimse
            interrompa
         fimse
         
         se ganho[2] = Verdadeiro entao
            quemganhou[2] <- (espacos[1] = simbolo1)
            se quemganhou[2] = verdadeiro entao
               escreval(nome, "ganhou o jogo!")
            senao
               escreval(nome2, "ganhou o jogo!")
            fimse
            interrompa
         fimse
         
         se ganho[3] = Verdadeiro entao
            quemganhou[3] <- (espacos[1] = simbolo1)
            se quemganhou[3] = verdadeiro entao
               escreval(nome, " ganhou o jogo!")
            senao
               escreval(nome2, " ganhou o jogo!")
            fimse
            interrompa
         fimse
         
         se ganho[4] = Verdadeiro entao
            quemganhou[4] <- (espacos[4] = simbolo1)
            se quemganhou[4] = verdadeiro entao
               escreval(nome, " ganhou o jogo!")
            senao
               escreval(nome2, " ganhou o jogo!")
            fimse
            interrompa
         fimse
         
         se ganho[5] = Verdadeiro entao
            quemganhou[5] <- (espacos[3] = simbolo1)
            se quemganhou[5] = verdadeiro entao
               escreval(nome, " ganhou o jogo!")
            senao
               escreval(nome2, " ganhou o jogo!")
            fimse
            interrompa
         fimse
         
         se ganho[6] = Verdadeiro entao
            quemganhou[6] <- (espacos[3] = simbolo1)
            se quemganhou[6] = verdadeiro entao
               escreval(nome, " ganhou o jogo!")
            senao
               escreval(nome2, " ganhou o jogo!")
            fimse
            interrompa
         fimse
         
         se ganho[7] = Verdadeiro entao
            quemganhou[7] <- (espacos[2] = simbolo1)
            se quemganhou[7] = verdadeiro entao
               escreval(nome, "ganhou o jogo!")
            senao
               escreval(nome2, "ganhou o jogo!")
            fimse
            interrompa
         fimse

         x <- x + 1
         y <- y + 1
         fimenquanto
         

fimprocedimento

Inicio
   escreval("--------------------------------------------")
   escreval("|        Bem Vindo ao Jogo da Velha        |")
   escreval("--------------------------------------------")
   escreval("|    Aperte ENTER para começar o jogo :)   |")
   escreval("|                                          |")
   escreval("|      Aperte ESC para fechar o jogo :(    |")
   escreval("--------------------------------------------")
   leia(A)

   escreval("Qual o nome do primeiro participante?")
   escreva("-> ")
   leia(nome)

   escreval(" ")

   escreval("Qual o nome do segundo participante?")
   escreva("-> ")
   leia(nome2)

   escreval(" ")

   escreval("Vocês sabem jogar? [1]Sim [2]Não")
   escreva("-> ")
   leia(es)

   se es = 1 entao
      engine()
      velha <- x = 9 e (ganho[1] = falso) e (ganho[2] = falso) e (ganho[3] = falso) e (ganho[4] = falso) e (ganho[5] = falso) e (ganho[6] = falso) e (ganho[7] = falso)

      se velha = verdadeiro entao
         escreval(" ")
         escreval("Deu velha, nenhum dos dois ganhou :/")
      fimse
      
      escreval("____________________________________________")
      escreval(" ")
      escreval("Jogar outra vez? [1]Sim [2]Não")
      escreva("-> ")
      leia(es1)

      se es1 = 1 entao
         engine()
      fimse
      
   senao
         Limpatela
         escreval("--------------------------------------------")
         escreval("|          Regras do Jogo da Velha         |")
         escreval("--------------------------------------------")

         escreval("1. O tabuleiro  é uma matriz  de três linhas por três colunas.")
         escreval(" ")
         escreva("-> Próxima Regra [ENTER] <-")
         leia(A)

         escreval(" ")
         escreval("______________________________________________________________ ")

         escreval("2. Dois jogadores escolhem uma marcação cada um, geralmente um círculo (O) e um xis (X).")
         escreval(" ")
         escreva("-> Próxima Regra [ENTER] <-")
         leia(B)

         escreval(" ")
         escreval("______________________________________________________________ ")

         escreval("3. Os jogadores jogam alternadamente, uma marcação por vez, numa lacuna que esteja vazia. ")
         escreval(" ")
         escreva("-> Próxima Regra [ENTER] <-")
         leia(C)

         escreval(" ")
         escreval("______________________________________________________________ ")

         escreval("4. O objectivo é conseguir três círculos ou três xis em linha, quer horizontal, vertical ou diagonal , e ao mesmo tempo, quando possível, impedir o adversário de ganhar na próxima jogada.")
         escreval(" ")
         escreva("-> Próxima Regra [ENTER] <-")
         leia(A)

         escreval(" ")
         escreval("______________________________________________________________ ")

         escreval("5. Quando um jogador conquista o objetivo, costuma-se riscar os três símbolos.")
         escreval(" ")
         escreva("-> Próxima Regra [ENTER] <-")
         leia(B)

         escreval(" ")
         escreval("______________________________________________________________ ")
         escreval("Pronto para jogar? [1]Sim [2]Não")
         escreval("-> ")
         leia(es1)
         
         se es1 = 1 entao
            engine()
         fimse
   fimse

Fimalgoritmo