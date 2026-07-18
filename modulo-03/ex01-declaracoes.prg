FUNCTION Main()

   LOCAL cNome      := "Juliana Almeida"
   LOCAL nSalario   := 4500.00
   LOCAL lAtivo     := .T.
   LOCAL dAdmissao  := Date()
   LOCAL cDepto     := "TI"

   QOut("Nome: " + cNome)
   QOut("Sal†rio: " + Str(nSalario, 10, 2))
   QOut("Ativo: " + If(lAtivo, "Sim", "N∆o"))
   QOut("Admiss∆o: " + DToC(dAdmissao))
   QOut("Departamento: " + cDepto)

RETURN NIL