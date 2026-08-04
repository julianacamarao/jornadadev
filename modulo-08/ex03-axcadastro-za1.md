# Exercício 3 – CRUD com AxCadastro

## Objetivo

Criar um programa em AdvPL utilizando a função `AxCadastro` para realizar o cadastro de pets na tabela ZA1.

## Código desenvolvido

O programa realiza:

- seleção da área ZA1;
- definição da ordem do índice;
- chamada da função `AxCadastro` para manutenção da tabela.

```advpl
#include "protheus.ch"

USER FUNCTION STTIP001()

    PRIVATE cCadastro := "Pets"

    dbSelectArea("ZA1")
    dbSetOrder(1)

    AxCadastro("ZA1", "Pets", , "1", , , , .F.)

RETURN NIL
```

## Observações

O programa foi desenvolvido conforme o conteúdo do módulo.

Durante os testes, o SmartClient apresentou a mensagem **"Programa U_STTIP001() não encontrado"**, pois o ambiente de compilação do MP8 IDE não estava configurado para incluir o fonte no RPO utilizado pelo Protheus.

Conforme orientação do professor, quando a execução não for possível devido às limitações do ambiente de compilação, a descrição da implementação é aceita para avaliação.

## Arquivos

- `ex03-axcadastro-za1.prw`
- Evidências do exercício.