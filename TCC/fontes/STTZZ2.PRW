#Include "Protheus.ch"

/*
--------------------------------------------------------------------
Programa : STTZZ2.PRW
Projeto  : TCC - Sistema de Controle de Nao Conformidades
Autora   : Juliana de Almeida Camarão
Objetivo : Manutencao e consulta das ocorrencias da tabela ZZ2
Data     : 2026
--------------------------------------------------------------------
*/

USER FUNCTION STTZZ2()

    LOCAL oErro
    LOCAL aColors := {}

    BEGIN SEQUENCE

        dbSelectArea("ZZ2")
        dbSetOrder(1)

        /*
            Legendas:
            Vermelho = possui nao conformidade
            Verde    = sem nao conformidade
        */

        aAdd(aColors, { "ZZ2->ZZ2_QTDNOK > 0",  "BR_VERMELHO" })
        aAdd(aColors, { "ZZ2->ZZ2_QTDNOK == 0", "BR_VERDE" })

        mBrowse( ;
            1, ;
            1, ;
            22, ;
            75, ;
            "ZZ2", ;
            , ;
            , ;
            , ;
            , ;
            , ;
            aColors ;
        )

    RECOVER USING oErro

        MsgStop( ;
            "Nao foi possivel abrir as ocorrencias de fornecedores." + ;
            Chr(13) + Chr(10) + ;
            "Verifique os dados informados e tente novamente.", ;
            "TCC - ISO 9001" ;
        )

        GravarLogTCC("STTZZ2", oErro)

    END SEQUENCE

RETURN NIL


/*
--------------------------------------------------------------------
Funcao   : STTZZ2FLT
Objetivo : Exibir somente as ocorrencias relacionadas ao codigo
           de controle da ZZ1 informado.
--------------------------------------------------------------------
*/

USER FUNCTION STTZZ2FLT(cCodigoZZ1)

    LOCAL oErro
    LOCAL aColors   := {}
    LOCAL aIndexZZ2 := {}
    LOCAL cFiltro   := ""

    IF Empty(cCodigoZZ1)

        MsgStop( ;
            "Codigo do controle de fornecimento nao informado.", ;
            "TCC - ISO 9001" ;
        )

        RETURN NIL

    ENDIF

    BEGIN SEQUENCE

        dbSelectArea("ZZ2")
        dbSetOrder(1)

        cFiltro := 'ZZ2_CONFOR == "' + cCodigoZZ1 + '"'

        aAdd(aColors, { "ZZ2->ZZ2_QTDNOK > 0",  "BR_VERMELHO" })
        aAdd(aColors, { "ZZ2->ZZ2_QTDNOK == 0", "BR_VERDE" })

        FilBrowse("ZZ2", @aIndexZZ2, @cFiltro)

        mBrowse( ;
            1, ;
            1, ;
            22, ;
            75, ;
            "ZZ2", ;
            , ;
            , ;
            , ;
            , ;
            , ;
            aColors ;
        )

        EndFilBrw("ZZ2", aIndexZZ2)

    RECOVER USING oErro

        MsgStop( ;
            "Nao foi possivel filtrar as ocorrencias deste controle.", ;
            "TCC - ISO 9001" ;
        )

        GravarLogTCC("STTZZ2FLT", oErro)

    END SEQUENCE

RETURN NIL