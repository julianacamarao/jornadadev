#Include "Protheus.ch"

/*
--------------------------------------------------------------------
Programa : STTZZ1.PRW
Projeto  : TCC - Sistema de Controle de Não Conformidades
Autora   : Juliana de Almeida Camarão
Objetivo : Manutenção da tabela ZZ1 (Controle de Fornecimento)
Data     : 2026
--------------------------------------------------------------------
*/

USER FUNCTION STTZZ1()

    LOCAL oErro

    BEGIN SEQUENCE

        dbSelectArea("ZZ1")
        dbSetOrder(1)

        AxCadastro( ;
            "ZZ1", ;
            "Controle de Fornecimento" ;
        )

    RECOVER USING oErro

        MsgStop( ;
            "Não foi possível executar a rotina de Controle de Fornecimento." + ;
            Chr(13) + Chr(10) + ;
            "Verifique os dados informados e tente novamente.", ;
            "TCC - ISO 9001" ;
        )

        GravarLogTCC("STTZZ1", oErro)

    END SEQUENCE

RETURN NIL