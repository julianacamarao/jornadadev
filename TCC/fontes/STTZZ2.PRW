#Include "Protheus.ch"

/*
    STTZZ2.PRW

    TCC - Sistema de Controle de Nao Conformidades
    de Fornecedores - ISO 9001

    Rotina de manutencao e consulta das ocorrencias
    registradas na tabela ZZ2.
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

            A comparacao completa com a tolerancia da ZZ1
            pode ser evoluida utilizando PercNaoConforme().
        */

        aAdd(aColors, { "ZZ2->ZZ2_QTDNOK > 0", "BR_VERMELHO" })
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
            "Verifique os dados e tente novamente.", ;
            "TCC - ISO 9001" ;
        )

        GravarLogTCC("STTZZ2", oErro)

    END SEQUENCE

RETURN NIL


/*
    Abre a ZZ2 exibindo apenas as ocorrencias
    relacionadas ao codigo da ZZ1 informado.
*/
USER FUNCTION STTZZ2FLT(cCodigoZZ1)

    LOCAL oErro
    LOCAL aColors   := {}
    LOCAL aIndexZZ2 := {}
    LOCAL cFiltro   := ""

    BEGIN SEQUENCE

        IF Empty(cCodigoZZ1)

            MsgStop( ;
                "Codigo do controle de fornecimento nao informado.", ;
                "TCC - ISO 9001" ;
            )

            BREAK

        ENDIF

        dbSelectArea("ZZ2")
        dbSetOrder(1)

        cFiltro := 'ZZ2_CONFOR == "' + cCodigoZZ1 + '"'

        aAdd(aColors, { "ZZ2->ZZ2_QTDNOK > 0", "BR_VERMELHO" })
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