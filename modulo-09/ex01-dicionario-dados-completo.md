# Exercício 1 – Dicionário de dados completo

## Visão geral

O projeto utiliza duas tabelas relacionadas:

- **SZ1 – Contatos:** armazena os contatos realizados com os clientes.
- **SZ2 – Interações:** armazena as interações relacionadas a cada contato.

A relação é do tipo **1:N**, pois um registro da SZ1 pode possuir várias interações na SZ2. A tabela SZ2 guarda a chave do contato no campo `Z2_CONTAT`.

## Tabelas configuradas no SX2

| Prefixo | Nome | Modo |
|---|---|---|
| SZ1 | Contatos | Compartilhado |
| SZ2 | Interações | Compartilhado |

## Campos da SZ1 – Contatos

| Título | Campo | Tipo | Tamanho | Decimais | Contexto |
|---|---|---|---:|---:|---|
| Filial | Z1_FILIAL | C | 2 | 0 | Real |
| Código | Z1_CODIGO | C | 6 | 0 | Real |
| Cliente | Z1_CLIENTE | C | 6 | 0 | Real |
| Loja Cliente | Z1_LOJACLI | C | 2 | 0 | Real |
| Nome Cliente | Z1_NOME | C | 40 | 0 | Virtual |
| Assunto | Z1_ASSUNTO | C | 60 | 0 | Real |
| Data | Z1_DATA | D | 8 | 0 | Real |
| Hora | Z1_HORA | C | 5 | 0 | Real |

O campo `Z1_NOME` foi definido como virtual porque o nome do cliente já está armazenado na tabela SA1. Dessa forma, a informação pode ser consultada sem duplicar o dado no banco.

## Campos da SZ2 – Interações

| Título | Campo | Tipo | Tamanho | Decimais | Contexto |
|---|---|---|---:|---:|---|
| Filial | Z2_FILIAL | C | 2 | 0 | Real |
| Contato | Z2_CONTAT | C | 6 | 0 | Real |
| Sequência | Z2_SEQUEN | C | 3 | 0 | Real |
| Tipo | Z2_TIPO | C | 1 | 0 | Real |
| Descrição | Z2_DESCRI | C | 100 | 0 | Real |
| Data | Z2_DATA | D | 8 | 0 | Real |
| Hora | Z2_HORA | C | 5 | 0 | Real |
| Usuário | Z2_USUAR | C | 20 | 0 | Real |
| Código do contato | Z2_CODIGO | C | 6 | 0 | Virtual |
| Assunto do contato | Z2_ASSUNT | C | 60 | 0 | Virtual |

Os campos `Z2_CODIGO` e `Z2_ASSUNT` foram definidos como virtuais porque exibem informações obtidas da tabela SZ1 por meio do campo `Z2_CONTAT`.

## Índices da SZ1 no SIX

| Ordem | Expressão | Descrição |
|---:|---|---|
| 1 | `Z1_FILIAL + Z1_CODIGO` | Chave primária |
| 2 | `Z1_FILIAL + Z1_CLIENTE + Z1_LOJACLI` | Busca por cliente |
| 3 | `Z1_FILIAL + DTOS(Z1_DATA)` | Busca por data |

## Índices da SZ2 no SIX

| Ordem | Expressão | Descrição |
|---:|---|---|
| 1 | `Z2_FILIAL + Z2_CONTAT + Z2_SEQUEN` | Chave primária |
| 2 | `Z2_FILIAL + DTOS(Z2_DATA)` | Busca por data |

## Domínio de tipos de interação no SX5

Foi criado o domínio `Z2` para padronizar os tipos de interação:

| Chave | Descrição |
|---|---|
| E | E-mail |
| L | Ligação |
| R | Reunião |
| V | Visita |
| W | WhatsApp |

O campo `Z2_TIPO` armazena apenas a chave de uma letra, enquanto o sistema apresenta ao usuário a descrição correspondente.

## Relações dos campos virtuais

No `X3_RELACAO` do campo `Z2_CODIGO`:

```advpl
POSICIONE("SZ1", 1, xFilial("SZ1") + M->Z2_CONTAT, "Z1_CODIGO")
```

No `X3_RELACAO` do campo `Z2_ASSUNT`:

```advpl
POSICIONE("SZ1", 1, xFilial("SZ1") + M->Z2_CONTAT, "Z1_ASSUNTO")
```

## Resultado esperado

Após a configuração, as tabelas SZ1 e SZ2 devem aparecer no dicionário de dados com seus campos, índices e domínio. A estrutura permite que cada contato possua várias interações, mantendo o relacionamento entre as tabelas e evitando a duplicação de informações por meio dos campos virtuais.