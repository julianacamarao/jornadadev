FUNCTION Main()

   LOCAL nNumero
   LOCAL nTotal := 0
   LOCAL nQtd := 0

   WHILE .T.

    ACCEPT "Digite um numero: " TO nNumero

    nNumero := Val(nNumero)

    IF nNumero == 0
      EXIT
    ENDIF

      nTotal += nNumero
      nQtd++

   ENDDO

   QOut("Soma total: " + Str(nTotal))
   QOut("Quantidade: " + Str(nQtd))

RETURN NIL