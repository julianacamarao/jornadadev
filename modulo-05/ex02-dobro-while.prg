FUNCTION Main()

   LOCAL nNumero

   WHILE .T.

    ACCEPT "Digite um numero: " TO nNumero

    nNumero := Val(nNumero)

    IF nNumero <= 0
      EXIT
    ENDIF

    QOut("Dobro: " + Str(nNumero * 2))

   ENDDO

   QOut("Programa encerrado.")

RETURN NIL