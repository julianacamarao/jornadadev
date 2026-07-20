FUNCTION Main()

   LOCAL nA
   LOCAL nB
   LOCAL cOperacao

   ACCEPT "Digite o primeiro numero: " TO nA
   ACCEPT "Digite o segundo numero: " TO nB
   ACCEPT "Digite a operacao (+, -, *, /, ^, R): " TO cOperacao

   nA := Val(nA)
   nB := Val(nB)

   DO CASE

    CASE cOperacao == "+"
        QOut("Resultado: " + Str(nA + nB,10,2))

      CASE cOperacao == "-"
        QOut("Resultado: " + Str(nA - nB,10,2))

      CASE cOperacao == "*"
        QOut("Resultado: " + Str(nA * nB,10,2))

      CASE cOperacao == "/"

        IF nB == 0
        QOut("Erro: divisao por zero!")
        ELSE
        QOut("Resultado: " + Str(nA / nB,10,2))
        ENDIF

      CASE cOperacao == "^"
        QOut("Resultado: " + Str(nA ^ nB,10,2))

      CASE Upper(cOperacao) == "R"
        QOut("Raiz quadrada: " + Str(Sqrt(nA),10,2))

      OTHERWISE
        QOut("Operacao invalida!")

   ENDCASE

RETURN NIL