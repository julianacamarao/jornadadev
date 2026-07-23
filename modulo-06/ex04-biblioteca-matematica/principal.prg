SET PROCEDURE TO matematica.prg

FUNCTION Main()

   QOut("=== Biblioteca Matematica ===")
   QOut("")

   QOut("Fatorial de 5: " + Str(FatorialN(5)))

   IF EhPrimo(7)
    QOut("7 e primo.")
   ELSE
    QOut("7 nao e primo.")
   ENDIF

   QOut("MDC entre 12 e 18: " + Str(MDC(12, 18)))

   QOut("MMC entre 12 e 18: " + Str(MMC(12, 18)))

RETURN NIL