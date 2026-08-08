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

Caso este README seja visualizado fora do GitHub, o código-fonte completo pode ser acessado pelos links abaixo.

**Repositório**

https://github.com/julianacamarao/jornadadev

**Pasta do TCC**

https://github.com/julianacamarao/jornadadev/tree/main/TCC

---

# Sobre o Projeto

Este projeto foi desenvolvido como Trabalho de Conclusão da **Jornada DEV START**, utilizando a linguagem **ADVPL** e a plataforma **TOTVS Protheus**.

O objetivo foi desenvolver um sistema para controle de não conformidades de fornecedores, aplicando os principais conceitos estudados ao longo da formação.

Durante o desenvolvimento foram utilizados recursos como:

- Dicionário de Dados (SX2 e SX3);
- criação de tabelas customizadas;
- campos virtuais;
- índices;
- validações;
- gatilhos;
- AxCadastro;
- mBrowse;
- tratamento de exceções com `BEGIN SEQUENCE`;
- organização do código em funções reutilizáveis.

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
- garantir a integridade das informações utilizando validações.

---

# Tecnologias Utilizadas

- ADVPL
- Harbour
- TOTVS Protheus
- SIGACFG
- SIGAMDI
- Git
- GitHub

---

# Estrutura do Projeto

```text
TCC/
│
├── Dados-e-Dicionario/
│   ├── README.md
│   ├── zz1990.dbf
│   └── zz2990.dbf
│
├── evidencias/
│   ├── 01-dicionario-dados.png
│   ├── 02-zz1-configuracao-geral.png
│   ├── 03-zz1-campos.png
│   ├── 04-zz1-indices.png
│   ├── 05-zz1-validacao-fornecedor.png
│   ├── 06-zz1-campo-fornecedor.png
│   ├── 07-zz1-gatilho-fornecedor-nome.png
│   ├── 08-zz2-configuracao-geral.png
│   ├── 09-tabelas-customizadas.png
│   ├── 10-zz2-campos.png
│   ├── 11-zz2-calculo-total-conforme.png
│   ├── 12-zz2-campo-total-conforme.png
│   ├── 13-zz2-campo-total-nao-conforme.png
│   ├── 14-zz2-gatilho-controle-fornecedor.png
│   ├── 15-zz2-gatilhos.png
│   ├── 16-zz2-gatilho-nome-fornecedor.png
│   ├── 17-estrutura-projeto-vscode.png
│   ├── 18-commit-projeto-github.png
│   ├── 19-repositorio-github.png
│   ├── 20-repositorio-final-github.png
│   ├── 21-zz1-formula-dbselectarea.png
│   ├── 22-zz1-mpsdu-dbf.png
│   └── 23-zz2-mpsdu-dbf.png
│
├── AUTOAVALIACAO.md
├── README.md
├── STTZZ1.PRW
├── STTZZ2.PRW
├── STTZZLIB.PRW
└── .gitignore
```

---

# Tabela ZZ1 — Controle de Fornecimento

A tabela **ZZ1** foi criada para armazenar as informações principais do controle de fornecimento.

## Campos

| Campo | Descrição |
|--------|-----------|
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
|--------|-----------|
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

Foram utilizados campos virtuais para automatizar o preenchimento de informações.

Entre eles:

- nome do fornecedor;
- valor total conforme;
- valor total não conforme.

---

# Gatilhos

Foram configurados gatilhos para preenchimento automático das informações.

### ZZ1

- Fornecedor → Nome do Fornecedor

### ZZ2

- Controle → Fornecedor
- Controle → Loja
- Controle → Nome do Fornecedor
- Data → Data Base
- Hora → Hora do Sistema

---

# Rotinas ADVPL

## STTZZ1.PRW

Responsável pela manutenção da tabela ZZ1 utilizando **AxCadastro**.

Possui tratamento de exceções com:

- `BEGIN SEQUENCE`
- `RECOVER`

Em caso de erro, uma mensagem amigável é apresentada ao usuário.

---

## STTZZ2.PRW

Responsável pela manutenção das ocorrências da tabela ZZ2.

Implementa também consultas das ocorrências relacionadas aos controles cadastrados.

---

## STTZZLIB.PRW

Biblioteca contendo funções reutilizáveis utilizadas pelas rotinas do projeto.

---

# Tratamento de Erros

As rotinas utilizam `BEGIN SEQUENCE` e `RECOVER` para evitar interrupções inesperadas durante a execução.

Essa abordagem melhora a experiência do usuário e facilita futuras manutenções.

---

# Evidências

A pasta **evidencias** reúne capturas de tela demonstrando:

- criação das tabelas ZZ1 e ZZ2;
- configuração do Dicionário de Dados;
- criação dos campos;
- criação dos índices;
- configuração das validações;
- configuração dos gatilhos;
- geração das tabelas físicas (DBF);
- estrutura final do projeto;
- versionamento e publicação no GitHub.

---

# Aprendizados

Durante o desenvolvimento deste projeto foram aplicados conhecimentos de:

- modelagem de dados;
- criação de tabelas customizadas;
- relacionamentos entre tabelas;
- criação de índices;
- utilização de campos virtuais;
- validações de dados;
- gatilhos;
- programação em ADVPL;
- tratamento de exceções;
- organização de projetos;
- versionamento com Git e GitHub.

---

# Observações

A estrutura das tabelas foi configurada no Dicionário de Dados do Protheus.

As tabelas físicas **zz1990.dbf** e **zz2990.dbf** foram geradas com sucesso e estão disponíveis na pasta **Dados-e-Dicionario**, juntamente com um README contendo a descrição da estrutura das tabelas.

As evidências da configuração do ambiente, criação das tabelas, índices, campos, validações e gatilhos encontram-se documentadas na pasta **evidencias**.

---

# Conclusão

Este projeto implementa os principais requisitos propostos para o Trabalho de Conclusão da Jornada DEV START, contemplando:

- criação de tabelas customizadas;
- índices;
- validações;
- gatilhos;
- rotinas ADVPL;
- tratamento de erros;
- documentação técnica.

Além do núcleo mínimo solicitado, o projeto também inclui a tabela ZZ2, biblioteca de funções reutilizáveis, documentação completa, evidências do ambiente Protheus e as tabelas físicas geradas.

O desenvolvimento deste sistema consolidou os conhecimentos adquiridos durante a jornada e proporcionou experiência prática com a plataforma TOTVS Protheus.

---

# Considerações Finais

Este projeto representa a conclusão da Jornada DEV START e reúne os principais conhecimentos adquiridos ao longo do curso, desde a modelagem do dicionário de dados até a implementação de rotinas em ADVPL para o Protheus.

Além de atender aos requisitos propostos para o Trabalho de Conclusão de Curso, este repositório foi organizado para servir como material de consulta e como parte do meu portfólio, demonstrando a aplicação prática dos conceitos estudados durante a formação.

---

**Desenvolvido por Juliana de Almeida Camarão**

**Sorocaba – SP • 2026**