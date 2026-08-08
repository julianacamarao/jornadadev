# Dados e Dicionário

Esta pasta contém os arquivos do Dicionário de Dados e das tabelas customizadas desenvolvidas para o Trabalho de Conclusão de Curso (TCC) da Jornada DEV START — TOTVS Paulista.

Os arquivos estão disponibilizados nos formatos **DBF** e **CSV**, permitindo tanto a utilização no ambiente TOTVS Protheus quanto a leitura e validação automatizada da estrutura do projeto.

---

## Arquivos do Dicionário de Dados

| Arquivo | Descrição |
|---|---|
| `sx2990.dbf` / `sx2990.csv` | Definição das tabelas do Dicionário de Dados |
| `sx3990.dbf` / `sx3990.csv` | Definição dos campos |
| `six990.dbf` / `six990.csv` | Definição dos índices |
| `sx7990.dbf` / `sx7990.csv` | Configuração dos gatilhos |
| `sxb990.dbf` / `sxb990.csv` | Configuração das consultas padrão (F3) |

---

## Tabelas Customizadas

| Arquivo | Descrição |
|---|---|
| `zz1990.dbf` / `zz1990.csv` | Tabela ZZ1 — Controle de Fornecimento |
| `zz2990.dbf` / `zz2990.csv` | Tabela ZZ2 — Ocorrências de Não Conformidade |

A tabela **ZZ1** concentra as informações relacionadas ao controle de fornecimento, fornecedores, certificados e tolerância de não conformidade.

A tabela **ZZ2** registra as ocorrências vinculadas aos controles de fornecimento cadastrados na ZZ1.

---

## Conversão DBF para CSV

O arquivo:

`converte-dicionario.prg`

é o utilitário utilizado para converter os arquivos `.dbf` em `.csv`.

Os arquivos DBF representam os dados utilizados pelo ambiente Protheus, enquanto os arquivos CSV disponibilizam o conteúdo em formato textual, permitindo a leitura da estrutura durante o processo de validação automatizada do TCC.

Para executar a conversão no ambiente Harbour:

```bash
hbmk2 converte-dicionario.prg
converte-dicionario.exe
```

O utilitário gera os arquivos CSV correspondentes aos DBFs disponíveis nesta pasta, incluindo na primeira linha os nomes dos campos.

---

## Estrutura

```text
Dados-e-Dicionario/
├── sx2990.dbf
├── sx2990.csv
├── sx3990.dbf
├── sx3990.csv
├── six990.dbf
├── six990.csv
├── sx7990.dbf
├── sx7990.csv
├── sxb990.dbf
├── sxb990.csv
├── zz1990.dbf
├── zz1990.csv
├── zz2990.dbf
├── zz2990.csv
├── converte-dicionario.prg
└── README.md
```

---

## Objetivo

Os arquivos desta pasta documentam e comprovam a estrutura de dados utilizada no projeto, contemplando:

- definição das tabelas customizadas;
- configuração dos campos;
- criação dos índices;
- configuração dos gatilhos;
- consultas padrão (F3);
- tabelas físicas ZZ1 e ZZ2;
- relacionamentos e regras utilizadas pelas rotinas ADVPL;
- representação textual do dicionário por meio dos arquivos CSV.

As evidências visuais da configuração e implementação no ambiente TOTVS Protheus estão disponíveis na pasta `evidencias` do projeto.

---

**TCC — Sistema de Controle de Não Conformidades de Fornecedores (ISO 9001)**  
**Jornada DEV START — TOTVS Paulista 2026**