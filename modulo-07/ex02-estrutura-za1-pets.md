# Exercício 2 – Estrutura da Tabela ZA1 (Pets)

## a) Campos da tabela

| Campo | Tipo | Tamanho |
|---|---|---:|
| ZA1_FILIAL | Caracter | 2 |
| ZA1_NOME | Caracter | 40 |
| ZA1_RACA | Caracter | 30 |
| ZA1_NASC | Data | 8 |

O campo ZA1_FILIAL identifica a filial responsável pelo registro e é obrigatório para que a tabela siga o padrão multiempresa do Protheus.

## b) Índice da tabela

Um índice adequado seria formado por ZA1_FILIAL + ZA1_NOME.

Esse índice permitiria localizar os pets de forma mais rápida, organizando os registros por filial e pelo nome do pet. O índice funciona de maneira semelhante a uma lista telefônica organizada em ordem alfabética.

## c) Prefixo Z

O prefixo Z identifica tabelas customizadas no Protheus. Essas tabelas são criadas pelo cliente ou pelo desenvolvedor para atender necessidades específicas e não fazem parte das tabelas padrão do sistema.

## d) Prefixo dos campos

Os campos começam com ZA1_ porque esse é o prefixo da tabela. Esse padrão permite identificar facilmente a qual tabela cada campo pertence, como ZA1_NOME, ZA1_RACA, ZA1_NASC e ZA1_FILIAL.