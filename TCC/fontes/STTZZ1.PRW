#Include "Protheus.ch"

/*
    STTZZ1.PRW

    TCC - Sistema de Controle de Nao Conformidades
    de Fornecedores - ISO 9001

    Rotina principal para manutencao da tabela ZZ1.
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
            "Nao foi possivel executar a rotina de Controle de Fornecimento." + ;
            Chr(13) + Chr(10) + ;
            "Verifique os dados e tente novamente.", ;
            "TCC - ISO 9001" ;
        )

        GravarLogTCC("STTZZ1", oErro)

    END SEQUENCE

RETURN NIL