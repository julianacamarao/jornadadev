#include "protheus.ch"

USER FUNCTION STTIP008()

    LOCAL cFiltro := ;
        "Month(ZA1->ZA1_DTNASC) == Month(dDataBase) .AND. " + ;
        "Year(ZA1->ZA1_DTNASC) == Year(dDataBase)"

    AbreBrowse(cFiltro)

RETURN NIL


USER FUNCTION STTIP08TD()

    AbreBrowse("")

RETURN NIL


USER FUNCTION STTIP08HI()

    LOCAL cMensagem := ""

    dbSelectArea("ZA1")

    IF Eof()
        MsgAlert("Nenhum pet selecionado.", "Histórico")
        RETURN NIL
    ENDIF

    cMensagem := ;
        "Código: " + AllTrim(ZA1->ZA1_COD) + CRLF + ;
        "Nome: "   + AllTrim(ZA1->ZA1_NOME) + CRLF + ;
        "Raça: "   + AllTrim(ZA1->ZA1_RACA)

    MsgInfo(cMensagem, "Histórico do pet")

RETURN NIL


STATIC FUNCTION AbreBrowse(cFiltro)

    PRIVATE cCadastro := "Pets"

    PRIVATE aRotina := {;
        {"Pesquisar",     "AxPesqui",    0, 1},;
        {"Visualizar",    "AxVisual",    0, 2},;
        {"Incluir",       "AxInclui",    0, 3},;
        {"Alterar",       "AxAltera",    0, 4},;
        {"Excluir",       "AxDeleta",    0, 5},;
        {"Mostrar todos", "U_STTIP08TD", 0, 6},;
        {"Histórico",     "U_STTIP08HI", 0, 6};
    }

    dbSelectArea("ZA1")
    dbSetOrder(1)
    dbSeek(xFilial("ZA1"))

    mBrowse(;
        1,;
        1,;
        22,;
        75,;
        "ZA1",;
        ,;
        ,;
        ,;
        ,;
        ,;
        ,;
        ,;
        ,;
        ,;
        ,;
        .F.,;
        ,;
        ,;
        cFiltro;
    )

RETURN NIL