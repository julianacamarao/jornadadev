FUNCTION Main()

   LOCAL aDias := {"Domingo", ;
                   "Segunda-feira", ;
                   "Terca-feira", ;
                   "Quarta-feira", ;
                   "Quinta-feira", ;
                   "Sexta-feira", ;
                   "Sabado"}

   LOCAL cNumero
   LOCAL nNumero

   ACCEPT "Digite um numero de 1 a 7: " TO cNumero

   nNumero := Val(cNumero)

   IF nNumero >= 1 .AND. nNumero <= 7

    QOut("Dia da semana: " + aDias[nNumero])

   ELSE

    QOut("Numero invalido!")

   ENDIF

RETURN NIL