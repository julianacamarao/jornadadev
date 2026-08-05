# Exercício 4 – Inclusão da rotina no menu SIGACOM

## Objetivo

Para que uma rotina desenvolvida em AdvPL possa ser utilizada pelos usuários, é necessário disponibilizá-la através do menu do Protheus.

No SIGACOM, isso é feito cadastrando uma nova opção de menu que executará a User Function desenvolvida.


## Informações do cadastro

- **Módulo:** SIGACOM
- **Tipo:** Função de Usuário (User Function)
- **Programa:** U_STTIP001
- **Descrição:** Cadastro de Contatos
- **Grupo:** Cadastros (ou grupo equivalente)


## Funcionamento

Após a inclusão da opção no menu, o usuário poderá acessar a rotina diretamente pelo SIGACOM, sem a necessidade de utilizar a opção **Executar Programa (99/01)**.

Essa abordagem facilita o acesso à rotina e proporciona uma experiência mais integrada ao sistema.


## Observação

Durante o desenvolvimento e os testes da aula, a rotina também pode ser executada pela opção **Executar Programa (99/01)**, informando o nome da User Function.

Em ambiente de produção, o procedimento recomendado é disponibilizar a rotina por meio do menu do Protheus.