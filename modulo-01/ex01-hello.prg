// Exercício 1 - Hello World

REQUEST HB_CODEPAGE_PT850
REQUEST HB_LANG_PT

FUNCTION Main()

   hb_cdpSelect("PT850")
   hb_langSelect("PT")

   QOut("Ol�, Mundo!")
   QOut("Bem-vindo(a) � Jornada DEV START!")

RETURN NIL