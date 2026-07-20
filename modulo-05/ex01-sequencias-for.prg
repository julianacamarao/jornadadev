FUNCTION Main()

   LOCAL nI
   LOCAL cPausa

   // A) Imprima os números de 1 a 100

   QOut("a) Numeros de 1 a 100")
   QOut("")

   FOR nI := 1 TO 100
    QOut(Str(nI))
   NEXT

   ACCEPT "Pressione Enter para continuar..." TO cPausa


   // B) Imprima os números de -50 a 50

   QOut("")
   QOut("b) Numeros de -50 a 50")
   QOut("")

   FOR nI := -50 TO 50
    QOut(Str(nI))
   NEXT

   ACCEPT "Pressione Enter para continuar..." TO cPausa


   // C) Imprima os números de 80 a 5 em ordem decrescen

   QOut("")
   QOut("c) Numeros de 80 a 5")
   QOut("")

   FOR nI := 80 TO 5 STEP -1
    QOut(Str(nI))
   NEXT

RETURN NIL