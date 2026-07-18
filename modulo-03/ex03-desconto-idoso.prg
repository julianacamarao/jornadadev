FUNCTION Main()

   LOCAL cNome
   LOCAL cData
   LOCAL dNasc
   LOCAL cPreco
   LOCAL nPreco
   LOCAL nIdade
   LOCAL nDesconto := 0
   LOCAL nTotal

   ACCEPT "Nome: " TO cNome

   ACCEPT "Data de nascimento (dd/mm/aaaa): " TO cData
   dNasc := CToD(cData)

   ACCEPT "Preço do produto: " TO cPreco
   nPreco := Val(cPreco)

   nIdade := Int((Date() - dNasc) / 365)

   IF nIdade > 60
      nDesconto := nPreco * 0.125
   ENDIF

   nTotal := nPreco - nDesconto

   QOut("")
   QOut("===== RESUMO =====")
   QOut("Cliente: " + cNome)
   QOut("Idade: " + Str(nIdade, 3))
   QOut("Preço: " + Str(nPreco, 10, 2))
   QOut("Desconto: " + Str(nDesconto, 10, 2))
   QOut("Total: " + Str(nTotal, 10, 2))

RETURN NIL