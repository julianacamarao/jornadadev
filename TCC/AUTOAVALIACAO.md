# AUTOAVALIAÇÃO — TCC

## Aluna

**Juliana de Almeida Camarão**

---

# Objetivo

Desenvolver um Sistema de Controle de Não Conformidades de Fornecedores utilizando ADVPL e TOTVS Protheus, aplicando os conceitos estudados durante a Jornada DEV START.

---

# Funcionalidades Implementadas

## Dicionário de Dados

- [x] Criação da tabela ZZ1
- [x] Criação da tabela ZZ2
- [x] Criação dos campos
- [x] Criação dos índices
- [x] Configuração das consultas padrão (F3)
- [x] Configuração dos gatilhos
- [x] Configuração dos campos virtuais
- [x] Configuração das validações
- [x] Geração das tabelas físicas (DBF)
- [x] Inclusão dos arquivos do Dicionário de Dados
- [x] Conversão dos arquivos DBF para CSV
- [x] Geração dos CSVs com cabeçalho contendo os nomes dos campos

---

## Arquivos de Dados e Dicionário

Foram incluídos na pasta `Dados-e-Dicionario` os arquivos necessários para representar a estrutura desenvolvida no Protheus:

- [x] `sx2990.dbf` / `sx2990.csv` — tabelas
- [x] `sx3990.dbf` / `sx3990.csv` — campos
- [x] `six990.dbf` / `six990.csv` — índices
- [x] `sx7990.dbf` / `sx7990.csv` — gatilhos
- [x] `sxb990.dbf` / `sxb990.csv` — consultas padrão (F3)
- [x] `zz1990.dbf` / `zz1990.csv` — tabela ZZ1
- [x] `zz2990.dbf` / `zz2990.csv` — tabela ZZ2
- [x] `converte-dicionario.prg` — utilitário para conversão DBF → CSV

---

## Desenvolvimento ADVPL

Os fontes foram organizados na pasta `fontes`:

- [x] `STTZZ1.PRW`
- [x] `STTZZ2.PRW`
- [x] `STTZZLIB.PRW`

Foram aplicados recursos como:

- [x] AxCadastro
- [x] mBrowse
- [x] Funções reutilizáveis
- [x] Consultas a tabelas do Protheus
- [x] Organização das responsabilidades em diferentes fontes

---

## Tratamento de Erros

- [x] Utilização de `BEGIN SEQUENCE`
- [x] Utilização de `RECOVER`
- [x] Exibição de mensagem amigável ao usuário
- [x] Tratamento de exceções nas rotinas desenvolvidas

---

## Organização e Documentação

- [x] Estrutura organizada em pastas
- [x] Pasta específica para os fontes
- [x] Pasta específica para Dados e Dicionário
- [x] Pasta específica para evidências
- [x] Código comentado
- [x] README principal
- [x] README de Dados e Dicionário
- [x] Documentação do Dicionário de Dados
- [x] Evidências do ambiente Protheus
- [x] Evidências das tabelas físicas no MPSDU
- [x] Versionamento no GitHub

---

# Dificuldades Encontradas

Durante o desenvolvimento surgiram desafios relacionados à configuração do ambiente Protheus, criação e manutenção do Dicionário de Dados, configuração de campos, índices, validações e gatilhos, além da materialização das tabelas físicas.

Essas dificuldades também contribuíram para ampliar o conhecimento prático sobre a estrutura interna do Protheus e sobre o funcionamento dos arquivos que compõem o Dicionário de Dados.

Após os ajustes necessários, foi possível concluir a estrutura das tabelas customizadas, gerar os arquivos físicos, implementar as rotinas ADVPL e organizar a documentação e as evidências do projeto.

Na etapa final, também foram adicionados os arquivos do Dicionário de Dados em formato DBF e suas respectivas versões em CSV, facilitando a leitura e validação das estruturas implementadas.

---

# Aprendizados

Este projeto permitiu aplicar, de forma prática, conhecimentos adquiridos durante a Jornada DEV START, especialmente em:

- ADVPL
- Harbour
- TOTVS Protheus
- Dicionário de Dados
- Modelagem de tabelas customizadas
- Índices
- Consultas padrão
- Campos virtuais
- Validações
- Gatilhos
- AxCadastro
- mBrowse
- Tratamento de exceções
- Funções reutilizáveis
- Estrutura dos arquivos DBF
- Conversão de DBF para CSV
- Organização de projetos
- Versionamento com Git e GitHub

---

# Diferenciais Desenvolvidos

Além do núcleo principal solicitado para o TCC, foram desenvolvidos e documentados recursos adicionais, entre eles:

- tabela ZZ2 para registro das ocorrências de não conformidade;
- relacionamento entre ZZ1 e ZZ2;
- rotina específica para consulta das ocorrências;
- biblioteca de funções reutilizáveis;
- campos virtuais;
- gatilhos de preenchimento automático;
- consultas padrão;
- validações utilizando tabelas padrão do Protheus;
- tratamento de exceções;
- documentação por evidências;
- disponibilização das tabelas físicas;
- disponibilização do Dicionário de Dados;
- conversão dos arquivos DBF para CSV.

---

# Autoavaliação

Considero que o projeto atingiu os objetivos propostos para o TCC e também avançou além do núcleo principal solicitado.

Além da implementação funcional, procurei documentar as diferentes etapas do desenvolvimento, incluindo a configuração do Dicionário de Dados, as tabelas físicas, os fontes ADVPL, as evidências do ambiente e os arquivos utilizados para representar a estrutura criada.

As dificuldades encontradas durante o processo também fizeram parte do aprendizado, principalmente por exigirem investigação do funcionamento do ambiente Protheus e de seu Dicionário de Dados.

---

# Considerações Finais

O projeto contempla o núcleo solicitado para o Trabalho de Conclusão da Jornada DEV START e funcionalidades adicionais desenvolvidas durante sua evolução.

Entre os principais resultados estão a implementação das tabelas ZZ1 e ZZ2, rotinas ADVPL, biblioteca de funções reutilizáveis, validações, gatilhos, campos virtuais, tratamento de erros, documentação técnica, evidências do ambiente e disponibilização dos arquivos físicos e de suas representações em CSV.

Este trabalho consolidou os conhecimentos adquiridos ao longo da formação e representa um projeto completo para compor meu portfólio de desenvolvimento em ADVPL e TOTVS Protheus.

---

**Juliana de Almeida Camarão**  
**Jornada DEV START — TOTVS 2026**