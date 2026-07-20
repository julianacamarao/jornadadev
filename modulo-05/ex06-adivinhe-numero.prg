FUNCTION Main()

   LOCAL nNumeroSecreto
   LOCAL nPalpite
   LOCAL nI

   nNumeroSecreto := HB_RandomInt(1,100)

   QOut("=== JOGO: ADIVINHE O NUMERO ===")
   QOut("Voce tem 7 tentativas.")

   FOR nI := 1 TO 7

    ACCEPT "Digite seu palpite: " TO nPalpite

    nPalpite := Val(nPalpite)

      IF nPalpite == nNumeroSecreto

         QOut("Parabens! Voce acertou!")
         EXIT

      ELSEIF nPalpite < nNumeroSecreto

         QOut("O numero secreto e maior.")

      ELSE

         QOut("O numero secreto e menor.")

      ENDIF

   NEXT

   QOut("")
   QOut("Numero secreto: " + Str(nNumeroSecreto))

RETURN NIL