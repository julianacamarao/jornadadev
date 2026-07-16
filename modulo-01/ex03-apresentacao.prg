// Exercício 3 - Ficha de Apresentação

REQUEST HB_CODEPAGE_PT850
REQUEST HB_LANG_PT

FUNCTION Main()

   hb_cdpSelect("PT850")
   hb_langSelect("PT")

   QOut("===========================")
   QOut(" FICHA DE APRESENTA��O")
   QOut("===========================")
   QOut("Nome    : Juliana Almeida")
   QOut("Cidade  : Sorocaba/SP")
   QOut("Curso   : Harbour/ADVPL")
   QOut("===========================")

RETURN NIL