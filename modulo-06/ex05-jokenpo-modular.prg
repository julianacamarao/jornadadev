FUNCTION Main()

   LOCAL cJogadaUsuario
   LOCAL cJogadaCPU
   LOCAL cResultado
   LOCAL cContinuar

   WHILE .T.

      ACCEPT "Escolha pedra, papel ou tesoura: " TO cJogadaUsuario

      cJogadaUsuario := Lower(AllTrim(cJogadaUsuario))

      IF ValidarJogada(cJogadaUsuario)

         cJogadaCPU := SortearJogadaCPU()

         QOut("Computador escolheu: " + cJogadaCPU)

         cResultado := DefinirVencedor(cJogadaUsuario, cJogadaCPU)

         QOut(cResultado)

      ELSE

         QOut("Jogada invalida!")

      ENDIF

      ACCEPT "Deseja jogar novamente? (S/N): " TO cContinuar

      IF Upper(AllTrim(cContinuar)) <> "S"
        EXIT
      ENDIF

      QOut("")

   ENDDO

RETURN NIL


FUNCTION SortearJogadaCPU()

   LOCAL nJogada

   nJogada := hb_RandomInt(1, 3)

   DO CASE

      CASE nJogada == 1
        RETURN "pedra"

      CASE nJogada == 2
        RETURN "papel"

      OTHERWISE
        RETURN "tesoura"

   ENDCASE

RETURN NIL


FUNCTION ValidarJogada(cJogada)

   IF cJogada == "pedra" .OR. ;
      cJogada == "papel" .OR. ;
      cJogada == "tesoura"

      RETURN .T.

   ENDIF

RETURN .F.


FUNCTION DefinirVencedor(cJogada1, cJogada2)

   IF cJogada1 == cJogada2
    RETURN "Empate!"
   ENDIF

   IF cJogada1 == "pedra" .AND. cJogada2 == "tesoura"
    RETURN "Voce venceu!"
   ENDIF

   IF cJogada1 == "papel" .AND. cJogada2 == "pedra"
    RETURN "Voce venceu!"
   ENDIF

   IF cJogada1 == "tesoura" .AND. cJogada2 == "papel"
    RETURN "Voce venceu!"
   ENDIF

RETURN "Computador venceu!"