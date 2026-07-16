// Exerc¡cio 4 - Data e Hora

REQUEST HB_CODEPAGE_PT850
REQUEST HB_LANG_PT

FUNCTION Main()

   hb_cdpSelect("PT850")
   hb_langSelect("PT")

   QOut("===========================")
   QOut(" FICHA DE APRESENTA€ÇO")
   QOut("===========================")
   QOut("Nome    : Juliana Almeida")
   QOut("Cidade  : Sorocaba/SP")
   QOut("Curso   : Harbour/ADVPL")
   QOut("Data    : " + DToC(Date()))
   QOut("Hora    : " + Time())
   QOut("===========================")

RETURN NIL