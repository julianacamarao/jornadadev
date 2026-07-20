FUNCTION Main()

   LOCAL cNome
   LOCAL cDisc
   LOCAL nNota1
   LOCAL nNota2
   LOCAL nMedia
   LOCAL cResposta

   WHILE .T.

      // Nome

      WHILE .T.

         ACCEPT "Nome: " TO cNome

         IF Len(Trim(cNome)) > 0
            EXIT
         ENDIF

         QOut("Nome invalido!")

      ENDDO


      // Disciplina

      WHILE .T.

         ACCEPT "Disciplina: " TO cDisc

         IF Len(cDisc) == 3 .AND. cDisc == Upper(cDisc)
            EXIT
         ENDIF

         QOut("Disciplina invalida!")

      ENDDO


      // Nota 1

      WHILE .T.

         ACCEPT "Nota 1: " TO nNota1

         nNota1 := Val(nNota1)

         IF nNota1 >= 0 .AND. nNota1 <= 10
            EXIT
         ENDIF

         QOut("Nota invalida!")

      ENDDO


      // Nota 2

      WHILE .T.

         ACCEPT "Nota 2: " TO nNota2

         nNota2 := Val(nNota2)

         IF nNota2 >= 0 .AND. nNota2 <= 10
            EXIT
         ENDIF

         QOut("Nota invalida!")

      ENDDO


      nMedia := (nNota1 + nNota2) / 2

      QOut("")
      QOut("Nome: " + cNome)
      QOut("Disciplina: " + cDisc)
      QOut("Media: " + Str(nMedia,5,2))
      QOut("")


      ACCEPT "Deseja calcular outro? (S/N): " TO cResposta

      IF Upper(cResposta) != "S"
         EXIT
      ENDIF

   ENDDO

   QOut("Programa encerrado.")

RETURN NIL