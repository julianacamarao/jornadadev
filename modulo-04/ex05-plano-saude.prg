FUNCTION Main()

   LOCAL nIdade
   LOCAL nDependentes
   LOCAL nValorPlano
   LOCAL nValorTotal

   ACCEPT "Digite a idade: " TO nIdade
   ACCEPT "Digite o numero de dependentes: " TO nDependentes

   nIdade := Val(nIdade)
   nDependentes := Val(nDependentes)

   IF nIdade <= 25

    nValorPlano := 180

   ELSEIF nIdade <= 40

    nValorPlano := 260

   ELSEIF nIdade <= 60

    nValorPlano := 380

   ELSE

    nValorPlano := 520

   ENDIF

   nValorTotal := nValorPlano + (nDependentes * 90)

   QOut("Valor do plano: R$ " + Str(nValorPlano,10,2))
   QOut("Valor total: R$ " + Str(nValorTotal,10,2))

RETURN NIL