algoritmo "semnome"

var
   l, c, x, i, o, cont: inteiro
   n: vetor [1..3, 1..3] de inteiro
   v: caractere
   
procedimento velha (v: caractere)
inicio
      escreval ("+---+---+---+")
      para l <- 1 ate 3 faca
           para c <- 1 ate 3 faca
                se n[l,c] = 0 entao
                   escreva ("| X ")
                senao
                     se n[l,c] = -1 entao
                        escreva ("| O ")
                     senao
                          escreva ("|", n[l,c], " ")
                     fimse
                fimse
           fimpara
           escreval ()
           escreval ("+---+---+---+")
      fimpara
fimprocedimento

inicio
      cont <- 0
      n[1,1] <- 1
      i <- 0
      escreval ("+---+---+---+")
      para l <- 1 ate 3 faca
           para c <- 1 ate 3 faca
                i <- i + 1
                n[l,c] <- i
                escreva ("|", n[l,c], " ")
           fimpara
           escreval ()
           escreval ("+---+---+---+")
      fimpara
      cont <- 0
      repita
            cont <- cont + 1
            escreva ("Posição do [X]: ")
            leia (x)
            para l <- 1 ate 3 faca
                 para c <- 1 ate 3 faca
                      se x = n[l,c] entao
                         n[l,c] <- 0
                      fimse
                 fimpara
            fimpara
            limpatela
            velha(v)
            se ((n[1,1] = 0) e (n[1,2] = 0) e (n[1,3] = 0)) ou ((n[1,1] = 0) e (n[2,2] = 0) e (n[3,3] = 0)) ou ((n[1,1] = 0) e (n[2,1] = 0) e (n[3,1] = 0)) ou ((n[2,1] = 0) e (n[2,2] = 0) e (n[2,3] = 0)) ou ((n[3,1] = 0) e (n[3,2] = 0) e (n[3,3] = 0)) ou ((n[1,2] = 0) e (n[2,2] = 0) e (n[3,2] = 0)) ou ((n[1,3] = 0) e (n[2,3] = 0) e (n[3,3] = 0)) ou ((n[1,3] = 0) e (n[2,2] = 0) e (n[3,1] = 0)) entao
               escreval ("JOGADOR [X] VENCEDOR!")
               fimalgoritmo
            fimse
            se cont < 5 entao
               escreva ("Posição do [O]: ")
               leia (o)
               para l <- 1 ate 3 faca
                    para c <- 1 ate 3 faca
                         se o = n[l,c] entao
                            n[l,c] <- -1
                         fimse
                    fimpara
               fimpara
               limpatela
               velha(v)
               se ((n[1,1] = -1) e (n[1,2] = -1) e (n[1,3] = -1)) ou ((n[1,1] = -1) e (n[2,2] = -1) e (n[3,3] = -1)) ou ((n[1,1] = -1) e (n[2,1] = -1) e (n[3,1] = -1)) ou ((n[2,1] = -1) e (n[2,2] = -1) e (n[2,3] = -1)) ou ((n[3,1] = -1) e (n[3,2] = -1) e (n[3,3] = -1)) ou ((n[1,2] = -1) e (n[2,2] = -1) e (n[3,2] = -1)) ou ((n[1,3] = -1) e (n[2,3] = -1) e (n[3,3] = -1)) ou ((n[1,3] = -1) e (n[2,2] = -1) e (n[3,1] = -1)) entao
                  escreval ("JOGADOR [O] VENCEDOR!")
                  fimalgoritmo
               fimse
            fimse
      ate cont = 5
      escreval ("VELHA!")
                   



fimalgoritmo
