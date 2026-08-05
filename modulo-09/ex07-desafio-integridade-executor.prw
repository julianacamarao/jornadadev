#include "protheus.ch"

/*/{Protheus.doc} EXECUTARSEGURO
Executa um bloco de código de forma segura.
Caso ocorra algum erro, exibe uma mensagem,
grava o log e retorna .F.

@type User Function
/*/

USER FUNCTION EXECUTARSEGURO(bBloco, cMsgErro)

    LOCAL oErro
    LOCAL lSucesso := .T.

    DEFAULT cMsgErro := "Erro durante a execução."

    IF ValType(bBloco) <> "B"
        RETURN .F.
    ENDIF

    BEGIN SEQUENCE

        Eval(bBloco)

    RECOVER WITH oErro

        lSucesso := .F.

        MsgStop( ;
            cMsgErro + CRLF + ;
            oErro:Description, ;
            "Erro" ;
        )

        U_GRAVARLOG("EXECUTARSEGURO", oErro)

    END SEQUENCE

RETURN lSucesso


/*
Exemplo de uso:

U_EXECUTARSEGURO( ;
    {|| AbrirArquivo("dados.dbf") }, ;
    "Falha ao abrir dados" ;
)

*/