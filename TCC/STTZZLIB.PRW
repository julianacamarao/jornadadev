#Include "Protheus.ch"

/*
--------------------------------------------------------------------
Programa : STTZZLIB.PRW
Projeto  : TCC - Sistema de Controle de Nao Conformidades
Autora   : Juliana de Almeida Camarão
Objetivo : Biblioteca de funcoes comuns utilizadas pelo TCC
Data     : 2026
--------------------------------------------------------------------
*/


/*
    Retorna o nome do fornecedor cadastrado na SA2.
*/
FUNCTION NomeFornecedor(cFornec, cLoja)

    LOCAL cNome := ""

    IF !Empty(cFornec) .AND. !Empty(cLoja)

        cNome := Posicione( ;
            "SA2", ;
            1, ;
            xFilial("SA2") + cFornec + cLoja, ;
            "A2_NOME" ;
        )

    ENDIF

RETURN cNome


/*
    Retorna a descricao do produto cadastrado na SB1.
*/
FUNCTION NomeProduto(cCodPro)

    LOCAL cDescricao := ""

    IF !Empty(cCodPro)

        cDescricao := Posicione( ;
            "SB1", ;
            1, ;
            xFilial("SB1") + cCodPro, ;
            "B1_DESC" ;
        )

    ENDIF

RETURN cDescricao


/*
    Calcula o percentual de itens nao conformes.

    Formula:
    Qtd. NOK / (Qtd. OK + Qtd. NOK) * 100
*/
FUNCTION PercNaoConforme(nOk, nNok)

    LOCAL nTotal      := nOk + nNok
    LOCAL nPercentual := 0

    IF nTotal > 0
        nPercentual := (nNok / nTotal) * 100
    ENDIF

RETURN nPercentual


/*
    Retorna .T. quando o certificado vence
    dentro dos proximos 30 dias.
*/
FUNCTION CertificadoVencendo(dValCer)

    LOCAL lVencendo := .F.

    IF !Empty(dValCer)

        lVencendo := dValCer >= dDataBase .AND. ;
                     dValCer <= dDataBase + 30

    ENDIF

RETURN lVencendo


/*
    Registra informacoes tecnicas de erro
    no console do AppServer.
*/
FUNCTION GravarLogTCC(cFuncao, oErro)

    LOCAL cErro := "Erro nao identificado"

    IF ValType(oErro) == "O"

        IF !Empty(oErro:Description)
            cErro := oErro:Description
        ENDIF

    ELSEIF ValType(oErro) == "C"

        cErro := oErro

    ENDIF

    ConOut("---------------------------------------------")
    ConOut("TCC - Controle ISO 9001")
    ConOut("Funcao: " + cFuncao)
    ConOut("Data: " + DToC(dDataBase))
    ConOut("Hora: " + Time())
    ConOut("Erro: " + cErro)
    ConOut("---------------------------------------------")

RETURN NIL