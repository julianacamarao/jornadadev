#include "protheus.ch"

// X3_VALID = "U_VALCLI001()"
// Observação: a apostila utiliza o campo ZA1_CLIENT.
// Posteriormente, o professor informou que, por se tratar de uma chave composta
// (ZA1_CLIENT + ZA1_LOJA), a validação pode ser aplicada no campo ZA1_LOJA,
// que é o último campo da chave.

USER FUNCTION VALCLI001()

    IF !ExistCpo("SA1", xFilial("SA1") + M->ZA1_CLIENT + M->ZA1_LOJA, 1)
        MsgAlert("Cliente não cadastrado na SA1!", "Atenção")
        RETURN .F.
    ENDIF

RETURN .T.