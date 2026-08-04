# Exercício 1 – AxCadastro × mBrowse

## a) Quando usar AxCadastro e quando usar mBrowse?

Eu usaria o `AxCadastro` quando precisasse criar rapidamente um CRUD simples, aproveitando o comportamento padrão do Protheus e sem necessidade de muitas personalizações.

Um exemplo seria um cadastro básico de pets, com inclusão, alteração, exclusão e consulta, usando a estrutura já definida no dicionário.

Eu usaria o `mBrowse` quando precisasse de maior controle sobre a tela, como filtros, legendas, botões personalizados e regras específicas de visualização.

Um exemplo seria um cadastro de pets com cores diferentes conforme a idade, filtro por cliente e botões personalizados.

## b) Três coisas que o mBrowse faz e o AxCadastro não faz

O `mBrowse` permite:

1. criar legendas e cores para diferenciar os registros;
2. aplicar filtros personalizados na listagem;
3. adicionar botões e ações específicas na tela.

O `AxCadastro` é mais rápido e simples, mas oferece menos possibilidades de personalização.

## c) Por que a regra `.T.` deve ficar por último em `aColors`?

A regra `.T.` representa uma condição sempre verdadeira.

Por isso, ela deve ficar por último. Se fosse colocada antes das demais regras, todos os registros atenderiam a essa condição imediatamente, e as outras cores nunca seriam avaliadas.

Ela funciona como uma regra padrão para os registros que não se encaixarem nas condições anteriores.

## d) Diferença entre campo Virtual e gatilho

Um campo Virtual, configurado por meio do `X3_RELACAO`, não grava o valor fisicamente no banco de dados. O valor é calculado e exibido quando o sistema precisa mostrá-lo.

Por exemplo, o campo `ZA1_NOMCLI` pode buscar o nome do cliente na SA1 usando o código e a loja informados.

Já o gatilho, configurado no SX7, é executado quando o usuário altera ou sai de determinado campo. Ele pode preencher outro campo automaticamente naquele momento.

Assim, o campo Virtual calcula o valor para exibição, enquanto o gatilho reage a uma ação do usuário e preenche outro campo.