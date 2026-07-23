FUNCTION Main()

   LOCAL aNumeros := {8, 3, 10, 1, 6, 2, 9, 5, 4, 7}
   LOCAL nI
   LOCAL nJ
   LOCAL nTemp

   QOut("=== Antes da ordenacao ===")

   FOR nI := 1 TO Len(aNumeros)

    QOut(Str(aNumeros[nI]))

   NEXT

   FOR nI := 1 TO Len(aNumeros) - 1

      FOR nJ := 1 TO Len(aNumeros) - nI

        IF aNumeros[nJ] > aNumeros[nJ + 1]

            nTemp := aNumeros[nJ]
            aNumeros[nJ] := aNumeros[nJ + 1]
            aNumeros[nJ + 1] := nTemp

        ENDIF

    NEXT

   NEXT

   QOut("")
   QOut("=== Depois da ordenacao ===")

   FOR nI := 1 TO Len(aNumeros)

      QOut(Str(aNumeros[nI]))

   NEXT

RETURN NIL