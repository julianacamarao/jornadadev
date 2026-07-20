FUNCTION Main()

   LOCAL nSalario
   LOCAL nNovoSalario

   ACCEPT "Digite o salario atual: R$ " TO nSalario

   nSalario := Val(nSalario)

   IF nSalario < 1000

    nNovoSalario := nSalario * 1.15

   ELSEIF nSalario <= 2000

    nNovoSalario := nSalario * 1.12

   ELSEIF nSalario <= 4000

    nNovoSalario := nSalario * 1.08

   ELSE

    nNovoSalario := nSalario * 1.05

   ENDIF

   QOut("Salario atual: R$ " + Str(nSalario,10,2))
   QOut("Novo salario: R$ " + Str(nNovoSalario,10,2))

RETURN NIL