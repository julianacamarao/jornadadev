#include "protheus.ch"

USER FUNCTION STTIP002()

    LOCAL cFiltro := ""

    // ERRATA DO MATERIAL:
    // Neste ambiente, as cores da legenda devem ser informadas em português.
    // Uso do BR_VERMELHO, BR_AMARELO e BR_VERDE.
    // As versões BR_RED, BR_YELLOW e BR_GREEN podem deixar as linhas do browse brancas.
    // As funções de data corretas em AdvPL são Month() e Day().

    LOCAL aColors := {;
        {"ZA1->ZA1_DTNASC < dDataBase - 30", "BR_VERMELHO"},;
        {"ZA1->ZA1_DTNASC == dDataBase",     "BR_AMARELO"},;
        {".T.",                              "BR_VERDE"};
    }

    PRIVATE cCadastro := "Pets"

    PRIVATE aRotina := {;
        {"Pesquisar",  "AxPesqui", 0, 1},;
        {"Visualizar", "AxVisual", 0, 2},;
        {"Incluir",    "AxInclui", 0, 3},;
        {"Alterar",    "AxAltera", 0, 4},;
        {"Excluir",    "AxDeleta", 0, 5};
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
        aColors,;
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