SET PROCEDURE TO estoque_lib.prg

FUNCTION Main()

   LOCAL aProdutos := {}
   LOCAL cOpcao
   LOCAL nOpcao

   WHILE .T.

      QOut("")
      QOut("===== CONTROLE DE ESTOQUE =====")
      QOut("1 - Cadastrar produto")
      QOut("2 - Listar produtos")
      QOut("3 - Entrada de estoque")
      QOut("4 - Saida de estoque")
      QOut("5 - Buscar produto")
      QOut("6 - Relatorio")
      QOut("0 - Sair")
      QOut("")

      ACCEPT "Escolha uma opcao: " TO cOpcao

      nOpcao := Val(AllTrim(cOpcao))

      DO CASE

         CASE nOpcao == 1

            aProdutos := CadastrarProduto(aProdutos)
            Pausar()

         CASE nOpcao == 2

            ListarProdutos(aProdutos)
            Pausar()

         CASE nOpcao == 3

            QOut("Entrada de estoque")
            Pausar()

         CASE nOpcao == 4

            QOut("Saida de estoque")
            Pausar()

         CASE nOpcao == 5

            QOut("Buscar produto")
            Pausar()

         CASE nOpcao == 6

            QOut("Relatorio")
            Pausar()

         CASE nOpcao == 0

            QOut("Programa encerrado.")
            EXIT

         OTHERWISE

            QOut("Opcao invalida!")
            Pausar()

      ENDCASE

   ENDDO

RETURN NIL


FUNCTION Pausar()

   LOCAL cContinuar

   QOut("")
   ACCEPT "Pressione Enter para voltar ao menu..." TO cContinuar

RETURN NIL