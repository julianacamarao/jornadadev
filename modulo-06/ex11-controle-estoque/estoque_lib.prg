FUNCTION CadastrarProduto(aProdutos)

   LOCAL cCodigo
   LOCAL cNome
   LOCAL cQuantidade
   LOCAL cPreco

   QOut("")
   QOut("=== CADASTRO DE PRODUTO ===")

   ACCEPT "Codigo: " TO cCodigo
   ACCEPT "Nome: " TO cNome
   ACCEPT "Quantidade: " TO cQuantidade
   ACCEPT "Preco unitario: " TO cPreco

   AADD(aProdutos, { ;
      AllTrim(cCodigo), ;
      AllTrim(cNome), ;
      Val(cQuantidade), ;
      Val(cPreco) })

   QOut("")
   QOut("Produto cadastrado com sucesso!")

RETURN aProdutos


FUNCTION ListarProdutos(aProdutos)

   LOCAL nI

   QOut("")
   QOut("=== LISTA DE PRODUTOS ===")

   IF Len(aProdutos) == 0

      QOut("Nenhum produto cadastrado.")

   ELSE

      FOR nI := 1 TO Len(aProdutos)

         QOut("")
         QOut("Produto " + Str(nI, 2, 0))
         QOut("Codigo: " + aProdutos[nI][1])
         QOut("Nome: " + aProdutos[nI][2])
         QOut("Quantidade: " + Str(aProdutos[nI][3], 6, 0))
         QOut("Preco: R$ " + Str(aProdutos[nI][4], 8, 2))

      NEXT

   ENDIF

RETURN NIL