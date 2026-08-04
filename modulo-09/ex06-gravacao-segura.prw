#include "protheus.ch"

USER FUNCTION STTIP003SALVAR()

    LOCAL oErro
    LOCAL lSucesso := .F.

    BEGIN SEQUENCE

        IF Empty(M->Z1_CLIENTE)
            Break("Cliente não informado.")
        ENDIF

        IF Empty(M->Z1_ASSUNTO)
            Break("Assunto não informado.")
        ENDIF

        BeginTran()

        BEGIN SEQUENCE

            dbSelectArea("SZ1")

            RecLock("SZ1", .T.)

            SZ1->Z1_FILIAL  := xFilial("SZ1")
            SZ1->Z1_CODIGO  := M->Z1_CODIGO
            SZ1->Z1_CLIENTE := M->Z1_CLIENTE
            SZ1->Z1_LOJACLI := M->Z1_LOJACLI
            SZ1->Z1_ASSUNTO := M->Z1_ASSUNTO
            SZ1->Z1_DATA    := M->Z1_DATA
            SZ1->Z1_HORA    := M->Z1_HORA

            MsUnLock()

            lSucesso := .T.

        RECOVER WITH oErro

            RollBackTran()

            MsgStop(;
                "Não foi possível salvar o contato." + CRLF + ;
                oErro:Description, ;
                "Erro na gravação" ;
            )

            U_GRAVARLOG("STTIP003SALVAR", oErro)

        END SEQUENCE

        IF lSucesso
            CommitTran()
            MsgInfo("Contato gravado com sucesso!", "Gravação")
        ENDIF

    RECOVER WITH oErro

        MsgStop(oErro, "Validação")

    END SEQUENCE

RETURN NIL


USER FUNCTION GRAVARLOG(cFuncao, oErro)

    LOCAL cMensagem := ""
    LOCAL nHandle

    DEFAULT cFuncao := "Função não informada"

    IF ValType(oErro) == "O"
        cMensagem := oErro:Description
    ELSE
        cMensagem := cValToChar(oErro)
    ENDIF

    nHandle := FOpen("erros.log", 2)

    IF nHandle < 0
        nHandle := FCreate("erros.log")
    ELSE
        FSeek(nHandle, 0, 2)
    ENDIF

    IF nHandle >= 0
        FWrite(;
            nHandle, ;
            DToC(Date()) + " " + Time() + ;
            " | " + cFuncao + ;
            " | " + cMensagem + CRLF ;
        )

        FClose(nHandle)
    ENDIF

RETURN NIL