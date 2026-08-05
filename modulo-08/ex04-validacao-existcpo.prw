#include "protheus.ch"

// X3_VALID = "U_VALCLI001()"
//
// Observação:
// A apostila utiliza a validação no campo ZA1_CLIENT.
// Posteriormente, o professor informou que, por se tratar
// de uma chave composta (ZA1_CLIENT + ZA1_LOJA),
// a validação deve ser aplicada no campo ZA1_LOJA,
// que é o último campo da chave.

USER FUNCTION VALCLI001()

    // Valida se o cliente informado existe na tabela SA1.
    // Caso não exista, exibe uma mensagem e impede a gravação.

    IF !ExistCpo("SA1", xFilial("SA1") + M->ZA1_CLIENT + M->ZA1_LOJA, 1)
        MsgAlert("Cliente não cadastrado na SA1!", "Atenção")
        RETURN .F.
    ENDIF

RETURN .T.
