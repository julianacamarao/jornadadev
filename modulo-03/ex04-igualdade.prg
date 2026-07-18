FUNCTION Main()

   LOCAL cTexto := "Harbour"

   IF cTexto = "Harb"
      QOut("Usando = : Verdadeiro")
   ELSE
      QOut("Usando = : Falso")
   ENDIF

   IF cTexto == "Harb"
      QOut("Usando == : Verdadeiro")
   ELSE
      QOut("Usando == : Falso")
   ENDIF

RETURN NIL