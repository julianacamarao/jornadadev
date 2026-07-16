// Exercício 2 - Saudação

REQUEST HB_CODEPAGE_PT850
REQUEST HB_LANG_PT

FUNCTION Main()

   hb_cdpSelect("PT850")
   hb_langSelect("PT")

   QOut("Nome: Juliana Almeida")
   QOut("Cidade: Sorocaba/SP")
   QOut("Pronto para aprender ADVPL!")

RETURN NIL