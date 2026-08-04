#include "protheus.ch"

USER FUNCTION EX06SEG()

    LOCAL lOk := .F.

    BEGIN TRANSACTION

        BEGIN SEQUENCE

            dbSelectArea("ZA1")

            RecLock("ZA1", .T.)

            ZA1->ZA1_FILIAL := xFilial("ZA1")
            ZA1->ZA1_COD    := "000001"
            ZA1->ZA1_NOME   := "PET TESTE"

            MsUnLock()

            lOk := .T.

        RECOVER WITH oErro

            DisarmTransaction()

            MsgStop("Erro ao gravar: " + oErro:Description)

        END SEQUENCE

    END TRANSACTION

    IF lOk
        MsgInfo("Registro gravado com sucesso!")
    ENDIF

RETURN