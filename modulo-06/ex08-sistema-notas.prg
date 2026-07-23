FUNCTION Main()

   LOCAL aAlunos := {}
   LOCAL cQtd
   LOCAL nQtd
   LOCAL cNome
   LOCAL cNota
   LOCAL nNota1
   LOCAL nNota2
   LOCAL nNota3
   LOCAL nNota4
   LOCAL nMedia
   LOCAL nI

   ACCEPT "Quantidade de alunos: " TO cQtd

   nQtd := Val(cQtd)

   FOR nI := 1 TO nQtd

    QOut("")

    ACCEPT "Nome: " TO cNome

    ACCEPT "Nota 1: " TO cNota
    nNota1 := Val(cNota)

    ACCEPT "Nota 2: " TO cNota
    nNota2 := Val(cNota)

    ACCEPT "Nota 3: " TO cNota
    nNota3 := Val(cNota)

    ACCEPT "Nota 4: " TO cNota
    nNota4 := Val(cNota)

    AADD(aAlunos, {cNome, nNota1, nNota2, nNota3, nNota4})

   NEXT

   QOut("")
   QOut("=== APROVADOS ===")

   FOR nI := 1 TO Len(aAlunos)

      nMedia := (aAlunos[nI][2] + ;
                 aAlunos[nI][3] + ;
                 aAlunos[nI][4] + ;
                 aAlunos[nI][5]) / 4

      IF nMedia >= 7

         QOut(aAlunos[nI][1] + ;
            " - Media: " + Str(nMedia,5,2))

      ENDIF

   NEXT

   QOut("")
   QOut("=== REPROVADOS ===")

   FOR nI := 1 TO Len(aAlunos)

      nMedia := (aAlunos[nI][2] + ;
                 aAlunos[nI][3] + ;
                 aAlunos[nI][4] + ;
                 aAlunos[nI][5]) / 4

      IF nMedia < 7

         QOut(aAlunos[nI][1] + ;
            " - Media: " + Str(nMedia,5,2))

      ENDIF

   NEXT

RETURN NIL