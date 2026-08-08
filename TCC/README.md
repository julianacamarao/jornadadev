# TCC — Sistema de Controle de Não Conformidades de Fornecedores (ISO 9001)

## Jornada DEV START — TOTVS 2026

### Autora

**Juliana de Almeida Camarão**

- Jornada DEV START
- Linguagem: ADVPL / Harbour
- Plataforma: TOTVS Protheus
- Trabalho de Conclusão de Curso (TCC)

---

# Repositório

Este projeto faz parte do repositório **jornadadev**, desenvolvido durante a Jornada DEV START.

**Repositório:**  
https://github.com/julianacamarao/jornadadev

**Pasta do TCC:**  
https://github.com/julianacamarao/jornadadev/tree/main/TCC

---

# Sobre o Projeto

Este projeto foi desenvolvido como Trabalho de Conclusão da **Jornada DEV START**, utilizando a linguagem **ADVPL** e a plataforma **TOTVS Protheus**.

O objetivo foi desenvolver um sistema para controle de não conformidades de fornecedores, aplicando os principais conceitos estudados ao longo da formação.

Durante o desenvolvimento foram utilizados recursos como:

- Dicionário de Dados;
- tabelas customizadas;
- campos virtuais;
- índices;
- consultas padrão (F3);
- validações;
- gatilhos;
- AxCadastro;
- mBrowse;
- tratamento de exceções com `BEGIN SEQUENCE`;
- funções reutilizáveis;
- conversão dos arquivos DBF para CSV;
- versionamento com Git e GitHub.

O cenário do projeto foi inspirado em processos de qualidade baseados na **ISO 9001**, permitindo controlar fornecedores, certificados de qualidade e ocorrências de não conformidade.

---

# Objetivo

Desenvolver um sistema capaz de:

- cadastrar controles de fornecimento;
- controlar certificados de qualidade;
- registrar a validade dos certificados;
- definir tolerâncias de não conformidade;
- registrar ocorrências relacionadas aos fornecedores;
- automatizar preenchimentos através de gatilhos;
- garantir a integridade das informações utilizando validações;
- organizar as informações de forma estruturada no ambiente Protheus.

---

# Tecnologias Utilizadas

- ADVPL
- Harbour
- TOTVS Protheus
- SIGACFG
- SIGAMDI
- MPSDU / APSDU
- Git
- GitHub
- CSV

---

# Estrutura do Projeto

```text
TCC/
│
├── README.md
├── AUTOAVALIACAO.md
│
├── Dados-e-Dicionario/
│   ├── README.md
│   ├── converte-dicionario.prg
│   │
│   ├── sx2990.dbf
│   ├── sx2990.csv
│   ├── sx3990.dbf
│   ├── sx3990.csv
│   ├── six990.dbf
│   ├── six990.csv
│   ├── sx7990.dbf
│   ├── sx7990.csv
│   ├── sxb990.dbf
│   ├── sxb990.csv
│   ├── zz1990.dbf
│   ├── zz1990.csv
│   ├── zz2990.dbf
│   └── zz2990.csv
│
├── fontes/
│   ├── STTZZ1.PRW
│   ├── STTZZ2.PRW
│   └── STTZZLIB.PRW
│
└── evidencias/
    ├── 01-dicionario-dados.png
    ├── 02-zz1-configuracao-geral.png
    ├── 03-zz1-campos.png
    ├── 04-zz1-indices.png
    ├── 05-zz1-validacao-fornecedor.png
    ├── 06-zz1-campo-fornecedor.png
    ├── 07-zz1-gatilho-fornecedor-nome.png
    ├── 08-zz2-configuracao-geral.png
    ├── 09-tabelas-customizadas.png
    ├── 10-zz2-campos.png
    ├── 11-zz2-calculo-total-conforme.png
    ├── 12-zz2-campo-total-conforme.png
    ├── 13-zz2-campo-total-nao-conforme.png
    ├── 14-zz2-gatilho-controle-fornecedor.png
    ├── 15-zz2-gatilhos.png
    ├── 16-zz2-gatilho-nome-fornecedor.png
    ├── 17-estrutura-projeto-vscode.png
    ├── 18-commit-projeto-github.png
    ├── 19-repositorio-github.png
    ├── 20-repositorio-final-github.png
    ├── 21-zz1-formula-dbselectarea.png
    ├── 22-zz1-mpsdu-dbf.png
    └── 23-zz2-mpsdu-dbf.png
```

---

# Dicionário de Dados

A pasta `Dados-e-Dicionario` contém os arquivos utilizados para representar a configuração do Dicionário de Dados do projeto.

Foram incluídos:

| Arquivo | Finalidade |
|---|---|
| `sx2990` | Definição das tabelas |
| `sx3990` | Definição dos campos |
| `six990` | Definição dos índices |
| `sx7990` | Configuração dos gatilhos |
| `sxb990` | Configuração das consultas padrão (F3) |
| `zz1990` | Tabela física ZZ1 |
| `zz2990` | Tabela física ZZ2 |

Cada estrutura é disponibilizada em **DBF** e **CSV**.

Os arquivos `.dbf` correspondem aos arquivos utilizados pelo ambiente Protheus, enquanto os `.csv` funcionam como representação textual do conteúdo, permitindo sua leitura durante o processo de validação automatizada.

---

# Conversão DBF → CSV

Para permitir a leitura textual dos arquivos do Dicionário de Dados, foi utilizado o programa:

`Dados-e-Dicionario/converte-dicionario.prg`

O utilitário foi compilado e executado através do Harbour:

```bash
hbmk2 converte-dicionario.prg
converte-dicionario.exe
```

A execução gera os respectivos arquivos CSV, incluindo na primeira linha os nomes dos campos existentes em cada DBF.

Foram gerados:

- `sx2990.csv`
- `sx3990.csv`
- `six990.csv`
- `sx7990.csv`
- `sxb990.csv`
- `zz1990.csv`
- `zz2990.csv`

---

# Instalação do Dicionário de Dados

Os arquivos necessários para representar o Dicionário de Dados e as tabelas customizadas do projeto estão disponíveis na pasta `Dados-e-Dicionario`.

Para utilização no ambiente TOTVS Protheus, devem ser considerados os arquivos DBF correspondentes ao Dicionário de Dados e às tabelas desenvolvidas:

- `sx2990.dbf` — definição das tabelas;
- `sx3990.dbf` — definição dos campos;
- `six990.dbf` — definição dos índices;
- `sx7990.dbf` — configuração dos gatilhos;
- `sxb990.dbf` — consultas padrão (F3);
- `zz1990.dbf` — tabela física ZZ1;
- `zz2990.dbf` — tabela física ZZ2.

Os arquivos devem ser utilizados em um ambiente Protheus compatível, preservando previamente os arquivos originais do ambiente por meio de backup.

Após a disponibilização do Dicionário de Dados no ambiente, os fontes presentes na pasta `fontes` devem ser compilados no ambiente ADVPL para disponibilização das rotinas `STTZZ1` e `STTZZ2`.

Os arquivos CSV disponibilizados juntamente com os DBFs funcionam como representação textual das estruturas utilizadas no projeto e permitem sua leitura durante o processo de validação automatizada do TCC.

---

# Tabela ZZ1 — Controle de Fornecimento

A tabela **ZZ1** foi criada para armazenar as informações principais do controle de fornecimento.

## Campos

| Campo | Descrição |
|---|---|
| ZZ1_FILIAL | Filial |
| ZZ1_CODIGO | Código do Controle |
| ZZ1_FORNEC | Código do Fornecedor |
| ZZ1_LOJAFO | Loja do Fornecedor |
| ZZ1_NOMEFO | Nome do Fornecedor (Virtual) |
| ZZ1_CERTIF | Certificado |
| ZZ1_VALCER | Validade do Certificado |
| ZZ1_TOLERA | Tolerância (%) |
| ZZ1_TOTOK | Quantidade Conforme |
| ZZ1_TOTNOK | Quantidade Não Conforme |

## Índices

Foram criados índices para:

- chave principal;
- consulta por fornecedor;
- consulta por validade do certificado.

---

# Tabela ZZ2 — Ocorrências de Fornecimento

A tabela **ZZ2** registra as ocorrências relacionadas aos controles cadastrados na ZZ1.

## Campos

| Campo | Descrição |
|---|---|
| ZZ2_FILIAL | Filial |
| ZZ2_CONFOR | Controle de Fornecimento |
| ZZ2_FORNEC | Código do Fornecedor |
| ZZ2_LOJAFO | Loja do Fornecedor |
| ZZ2_NOMEFO | Nome do Fornecedor (Virtual) |
| ZZ2_DATA | Data da Ocorrência |
| ZZ2_HORA | Hora |
| ZZ2_CODPRO | Código do Produto |
| ZZ2_QTDOK | Quantidade Conforme |
| ZZ2_QTDNOK | Quantidade Não Conforme |
| ZZ2_VLRUNI | Valor Unitário |
| ZZ2_TOTOK | Valor Total Conforme |
| ZZ2_TOTNOK | Valor Total Não Conforme |

## Índices

Foram criados índices para:

- chave principal;
- consulta por fornecedor;
- consulta por data.

---

# Validações Implementadas

## ZZ1

Foram implementadas validações para:

- verificar a existência do fornecedor na tabela SA2;
- validar a data de validade do certificado;
- limitar a tolerância entre **0 e 100**.

## ZZ2

Foram implementadas validações para:

- verificar a existência do controle na ZZ1;
- verificar a existência do produto na SB1;
- validar a data da ocorrência.

---

# Campos Virtuais

Foram utilizados campos virtuais para disponibilizar informações derivadas de outros dados do sistema.

Entre eles:

- nome do fornecedor;
- valor total conforme;
- valor total não conforme.

---

# Gatilhos

Foram configurados gatilhos para preenchimento automático das informações.

## ZZ1

- Fornecedor → Nome do Fornecedor

## ZZ2

- Controle → Fornecedor
- Controle → Loja
- Controle → Nome do Fornecedor
- Data → Data Base
- Hora → Hora do Sistema

---

# Rotinas ADVPL

Os códigos-fonte estão organizados na pasta `fontes`.

## STTZZ1.PRW

Rotina responsável pela manutenção da tabela **ZZ1**, utilizando `AxCadastro`.

Possui tratamento de exceções utilizando:

- `BEGIN SEQUENCE`
- `RECOVER`

Em caso de erro, uma mensagem amigável é apresentada ao usuário e as informações técnicas podem ser encaminhadas para a rotina de log.

---

## STTZZ2.PRW

Rotina responsável pela consulta das ocorrências registradas na tabela **ZZ2**, utilizando `mBrowse`.

Também possui rotina para consulta filtrada das ocorrências relacionadas a determinado controle de fornecimento.

Foram utilizadas legendas para auxiliar na identificação de registros com e sem quantidade não conforme.

---

## STTZZLIB.PRW

Biblioteca de funções comuns utilizadas pelo projeto.

Entre as funções implementadas estão:

- consulta do nome do fornecedor;
- consulta da descrição do produto;
- cálculo do percentual de itens não conformes;
- identificação de certificados próximos ao vencimento;
- registro de informações técnicas de erro.

---

# Menu no SIGACOM

As rotinas desenvolvidas para o projeto foram estruturadas para serem disponibilizadas no menu do SIGACOM.

As entradas de menu correspondem às seguintes funções:

- `STTZZ1` — Controle de Fornecimento, responsável pela manutenção dos registros da tabela ZZ1.
- `STTZZ2` — Ocorrências de Fornecimento, responsável pela consulta e manutenção dos registros da tabela ZZ2.

As rotinas podem ser associadas às respectivas opções do menu do SIGACOM após a compilação dos fontes ADVPL no ambiente Protheus.

---

# Tratamento de Erros

As rotinas utilizam `BEGIN SEQUENCE` e `RECOVER` para tratamento de exceções.

Em caso de falha, o sistema apresenta uma mensagem amigável ao usuário e utiliza a função `GravarLogTCC()` para registrar informações técnicas no console do AppServer.

Essa abordagem evita interrupções sem tratamento e facilita futuras análises e manutenções.

---

# Evidências

A pasta `evidencias` reúne capturas de tela realizadas durante o desenvolvimento do projeto.

As evidências documentam:

- criação das tabelas ZZ1 e ZZ2;
- configuração do Dicionário de Dados;
- criação dos campos;
- criação dos índices;
- validações;
- gatilhos;
- campos virtuais;
- geração das tabelas físicas;
- visualização dos DBFs no MPSDU;
- estrutura do projeto;
- versionamento e publicação no GitHub.

---

# Aprendizados

Durante o desenvolvimento deste projeto foram aplicados conhecimentos de:

- modelagem de dados;
- Dicionário de Dados do Protheus;
- criação de tabelas customizadas;
- relacionamentos entre tabelas;
- índices;
- consultas padrão;
- campos virtuais;
- validações;
- gatilhos;
- programação ADVPL;
- AxCadastro;
- mBrowse;
- tratamento de exceções;
- funções reutilizáveis;
- manipulação de arquivos DBF;
- conversão de DBF para CSV;
- organização de projetos;
- versionamento com Git e GitHub.

---

# Diferenciais Implementados

Além da estrutura principal de controle de fornecimento, o projeto contempla:

- segunda tabela customizada para ocorrências (ZZ2);
- relacionamento entre ZZ1 e ZZ2;
- campos virtuais;
- gatilhos de preenchimento automático;
- validações utilizando tabelas padrão do Protheus;
- consulta de fornecedores na SA2;
- consulta de produtos na SB1;
- rotina específica para ocorrências;
- consulta filtrada por controle de fornecimento;
- biblioteca própria de funções reutilizáveis;
- cálculo percentual de não conformidade;
- verificação de certificado próximo ao vencimento;
- tratamento de exceções;
- registro técnico de erros;
- documentação por evidências;
- arquivos físicos DBF;
- representação textual do dicionário em CSV.

---

# Observações

A estrutura das tabelas foi configurada no Dicionário de Dados do TOTVS Protheus.

As tabelas físicas `zz1990.dbf` e `zz2990.dbf` foram materializadas no ambiente e estão disponíveis em `Dados-e-Dicionario`.

Também foram disponibilizados os arquivos do Dicionário de Dados necessários para representar tabelas, campos, índices, gatilhos e consultas padrão.

Todos os DBFs exigidos para a entrega possuem seus respectivos arquivos CSV, permitindo tanto a preservação da estrutura original quanto sua leitura em formato textual.

---

# Conclusão

Este projeto implementa os principais requisitos propostos para o Trabalho de Conclusão da Jornada DEV START, contemplando:

- tabelas customizadas;
- Dicionário de Dados;
- campos e índices;
- consultas padrão;
- validações;
- gatilhos;
- rotinas ADVPL;
- tratamento de exceções;
- documentação técnica;
- evidências;
- arquivos DBF e CSV.

Além do núcleo principal, foram implementados recursos adicionais relacionados ao controle de ocorrências, reutilização de código, tratamento de erros e documentação da solução.

O desenvolvimento deste sistema consolidou os conhecimentos adquiridos durante a Jornada DEV START e proporcionou experiência prática com a plataforma TOTVS Protheus.

---

# Considerações Finais

Este projeto representa a conclusão da Jornada DEV START e reúne os principais conhecimentos adquiridos ao longo do curso, desde a modelagem do Dicionário de Dados até a implementação das rotinas em ADVPL.

O repositório foi estruturado de forma a documentar não apenas o código desenvolvido, mas também o Dicionário de Dados, as tabelas físicas, as evidências da implementação e os arquivos necessários para validação.

Além de atender aos requisitos propostos para o Trabalho de Conclusão de Curso, o projeto também foi organizado para servir como material de consulta e como parte do meu portfólio, demonstrando a aplicação prática dos conceitos estudados durante a formação.

---

**Desenvolvido por Juliana de Almeida Camarão**

**Sorocaba – SP • 2026**