FUNCTION Main()

   LOCAL nA
   LOCAL nB
   LOCAL cOperacao
   LOCAL nResultado

   nA := LerNumero("Digite o primeiro numero: ")
   nB := LerNumero("Digite o segundo numero: ")

   cOperacao := LerOperacao()

   IF Calcular(nA, nB, cOperacao, @nResultado)

      MostrarResultado(cOperacao, nResultado)

   ELSE

      QOut("Operacao invalida ou divisao por zero!")

   ENDIF

RETURN NIL


FUNCTION LerNumero(cMensagem)

   LOCAL cValor

   ACCEPT cMensagem TO cValor

RETURN Val(cValor)


FUNCTION LerOperacao()

   LOCAL cOperacao

   ACCEPT "Digite a operacao (+, -, *, /, ^, R): " TO cOperacao

RETURN cOperacao


FUNCTION Calcular(nA, nB, cOperacao, nResultado)

   DO CASE

      CASE cOperacao == "+"

         nResultado := nA + nB

      CASE cOperacao == "-"

         nResultado := nA - nB

      CASE cOperacao == "*"

         nResultado := nA * nB

      CASE cOperacao == "/"

         IF nB == 0
            RETURN .F.
         ENDIF

         nResultado := nA / nB

      CASE cOperacao == "^"

         nResultado := nA ^ nB

      CASE Upper(cOperacao) == "R"

         nResultado := Sqrt(nA)

      OTHERWISE

         RETURN .F.

   ENDCASE

RETURN .T.


FUNCTION MostrarResultado(cOperacao, nResultado)

   IF Upper(cOperacao) == "R"

      QOut("Raiz quadrada: " + Str(nResultado,10,2))

   ELSE

      QOut("Resultado: " + Str(nResultado,10,2))

   ENDIF

RETURN NIL