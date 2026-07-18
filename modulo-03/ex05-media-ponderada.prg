FUNCTION Main()

   LOCAL cNota
   LOCAL nNota1
   LOCAL nNota2
   LOCAL nNota3
   LOCAL nNota4
   LOCAL nMedia

   ACCEPT "Digite a primeira nota: " TO cNota
   nNota1 := Val(cNota)

   ACCEPT "Digite a segunda nota: " TO cNota
   nNota2 := Val(cNota)

   ACCEPT "Digite a terceira nota: " TO cNota
   nNota3 := Val(cNota)

   ACCEPT "Digite a quarta nota: " TO cNota
   nNota4 := Val(cNota)

   nMedia := (nNota1 * 1 + nNota2 * 2 + nNota3 * 3 + nNota4 * 4) / 10

   QOut("")
   QOut("===== RESULTADO =====")
   QOut("Média ponderada: " + Str(nMedia, 10, 2))

RETURN NIL