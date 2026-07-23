FUNCTION FatorialN(nN)

   LOCAL nI
   LOCAL nResultado := 1

   FOR nI := 1 TO nN

    nResultado := nResultado * nI

   NEXT

RETURN nResultado


FUNCTION EhPrimo(nN)

   LOCAL nI

   IF nN < 2
    RETURN .F.
   ENDIF

   FOR nI := 2 TO nN - 1

    IF nN % nI == 0
      RETURN .F.
    ENDIF

   NEXT

RETURN .T.


FUNCTION MDC(nA, nB)

   LOCAL nResto

   WHILE nB <> 0

    nResto := nA % nB
    nA := nB
    nB := nResto

   ENDDO

RETURN nA


FUNCTION MMC(nA, nB)

RETURN (nA * nB) / MDC(nA, nB)