# Exercício 5 – A1_FILIAL e xFilial()

## a) Por que existe o campo A1_FILIAL?

O campo `A1_FILIAL` identifica em qual filial cada registro da tabela SA1 foi gravado.

O Protheus permite que várias empresas e filiais utilizem o mesmo ambiente. Por isso, esse campo ajuda a separar e organizar os dados de cada unidade.

A tabela ZA1 também precisa do campo `ZA1_FILIAL` para seguir o mesmo padrão do framework.

## b) Qual é a função de xFilial()?

A função `xFilial()` retorna o código de filial correto para a tabela informada, considerando a configuração de compartilhamento do ambiente.

Exemplo:

```advpl
xFilial("SA1")
```

Utilizar `xFilial()` evita que o desenvolvedor informe a filial manualmente. Caso a filial fosse escrita diretamente no programa, o código poderia gravar registros na filial errada ou funcionar somente em um ambiente específico.