#include "protheus.ch"

FUNCTION Main()

    LOCAL nA := 10
    LOCAL nB := 0
    LOCAL nResultado

    BEGIN SEQUENCE

        nResultado := nA / nB
        QOut("Resultado: " + Str(nResultado))

    RECOVER WITH oErro

        QOut("Erro capturado: " + oErro:Description)

    END SEQUENCE

    QOut("O programa continua de pe!")

RETURN NIL