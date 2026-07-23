FUNCTION Main()

   LOCAL aCarrinho := {}
   LOCAL cNome
   LOCAL cPreco
   LOCAL nPreco
   LOCAL cContinuar
   LOCAL nI
   LOCAL nTotal := 0

   DO WHILE .T.

    ACCEPT "Nome do produto: " TO cNome

    ACCEPT "Preco: " TO cPreco

    nPreco := Val(cPreco)

    AADD(aCarrinho, {cNome, nPreco})

    nTotal := nTotal + nPreco

    ACCEPT "Adicionar outro produto? (S/N): " TO cContinuar

      IF Upper(AllTrim(cContinuar)) <> "S"
        EXIT
      ENDIF

      QOut("")

   ENDDO

   QOut("")
   QOut("=== CARRINHO DE COMPRAS ===")

   FOR nI := 1 TO Len(aCarrinho)

      QOut(aCarrinho[nI][1] + ;
         " - R$ " + Str(aCarrinho[nI][2], 8, 2))

   NEXT

   QOut("")
   QOut("Total da compra: R$ " + Str(nTotal, 8, 2))

RETURN NIL