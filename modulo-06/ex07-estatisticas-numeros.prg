FUNCTION Main()

   LOCAL aNumeros := {}
   LOCAL cNumero
   LOCAL nNumero
   LOCAL nI
   LOCAL nSoma := 0

   FOR nI := 1 TO 10

    ACCEPT "Digite o " + Str(nI,2,0) + " numero: " TO cNumero

    nNumero := Val(cNumero)

    AADD(aNumeros, nNumero)

    nSoma := nSoma + nNumero

   NEXT

   ASORT(aNumeros)

   QOut("")
   QOut("=== Numeros em ordem crescente ===")

   FOR nI := 1 TO Len(aNumeros)

    QOut(Str(aNumeros[nI]))

   NEXT

   QOut("")
   QOut("Soma: " + Str(nSoma))
   QOut("Media: " + Str(nSoma / Len(aNumeros), 6, 2))
   QOut("Menor numero: " + Str(aNumeros[1]))
   QOut("Maior numero: " + Str(aNumeros[Len(aNumeros)]))

RETURN NIL