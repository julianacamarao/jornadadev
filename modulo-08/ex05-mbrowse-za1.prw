#include "protheus.ch"

USER FUNCTION STTIP002()

    LOCAL cFiltro := ""

    PRIVATE cCadastro := "Pets"

    PRIVATE aRotina := {;
        {"Pesquisar", "AxPesqui", 0, 1},;
        {"Visualizar", "AxVisual", 0, 2},;
        {"Incluir", "AxInclui", 0, 3},;
        {"Alterar", "AxAltera", 0, 4},;
        {"Excluir", "AxDeleta", 0, 5};
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