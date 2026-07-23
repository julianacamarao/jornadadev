FUNCTION Main()

   LOCAL cHora

   cHora := ObterHora()

   cHora := FormatarHora(cHora)

   ExibirHora(cHora)

RETURN NIL


FUNCTION ObterHora()

RETURN Time()


FUNCTION FormatarHora(cHora)

RETURN cHora


FUNCTION ExibirHora(cHora)

   QOut("Hora atual: " + cHora)

RETURN NIL