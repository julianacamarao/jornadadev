# Exercício 7 – Gatilho de CEP

## 1. Qual a diferença entre campo, contra-domínio e regra?

- **Campo:** é o campo que dispara o gatilho quando seu valor é alterado.
- **Contra-domínio:** é o campo que receberá o valor calculado pelo gatilho.
- **Regra:** é a expressão ou função responsável por calcular o valor que será gravado no contra-domínio.


## 2. Por que a regra utiliza M->A1_CEP e não SA1->A1_CEP?

Porque, durante a inclusão ou alteração do registro, o valor informado ainda está na área de memória (M->). Nesse momento, os dados ainda não foram gravados na tabela SA1.


## 3. Quais os problemas de deixar os CEPs dentro do código-fonte? Como resolver?

Manter os CEPs diretamente no código dificulta a manutenção, exige recompilação sempre que houver alguma alteração e torna a solução pouco escalável.

Em um ambiente real, o ideal é consultar uma tabela de CEPs do próprio Protheus ou utilizar um serviço externo, como o **ViaCEP**, evitando manter esses dados fixos no código-fonte.


## 4. Como preencher também o campo A1_COD_MUN?

Pode-se criar um novo gatilho para o campo A1_COD_MUN ou adaptar a função para retornar também o código do município, preenchendo esse campo automaticamente após localizar o CEP informado.


## Observações

Neste exercício foi utilizada uma tabela de CEPs apenas para demonstrar o funcionamento do gatilho.

Conforme explicado na aula, em um ambiente de produção o ideal é consultar uma base oficial de CEPs ou um serviço externo, mantendo o mecanismo do gatilho independente da origem dos dados.