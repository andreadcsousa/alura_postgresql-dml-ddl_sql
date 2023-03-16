/*
    Dono do banco

    Imagine o cenário onde queremos criar um novo banco de dados onde o usuário “dono” seja o foo_bar.
    Qual das alternativas a seguir NÃO possui a sintaxe correta?
*/

CREATE DATABASE name OWNER foo_bar
CREATE DATABASE name WITH OWNER = foo_bar

> CREATE DATABASE name OWNED BY foo_bar



/*
    Adicionar coluna

    Conferindo a documentação (https://www.postgresql.org/docs/12/sql-altertable.html) caso precise, monte o SQL necessário para adicionar uma coluna nome, que é um VARCHAR(128) na tabela pessoa.
*/

ALTER TABLE pessoa ADD COLUMN nome VARCHAR(128);



/*
    Encontre o erro

    Confira a seguinte query, levando em consideração que a tabela e os campos existem.

    INSERT INTO pessoa (nome, data_nascimento) VALUES ("Vinicius Dias", "1997-15-10");
    
    Quais os erros da query?
*/

"A query está utilizando aspas duplas para delimitar os campos."
"A data está no formato errado. O correto é ANO-MÊS-DIA. Corrigindo, ficaria 1997-10-15."



/*
    SQL de importação

    Ao importar um arquivo utilizando o pgAdmin, por baixo dos panos ele simplesmente executa uma instrução SQL.
    Qual o comando SQL executado ao importar o arquivo /pasta/arquivo.CSV para a tabela pessoa?
*/

COPY pessoa FROM '/pasta/arquivo.csv';



/*
    Para saber mais: DELETE

    Assim como é possível fazer INSERT ou UPDATE a partir de um SELECT também podemos realizar junções para filtrar o que queremos excluir de nossas tabelas, mas a sintaxe é um pouco diferente.

    Por exemplo, para excluir todos os cursos da categoria com nome “Teste”, podemos fazer:
*/

DELETE FROM curso USING categoria
WHERE categoria.id = curso.categoria_id AND categoria.nome = 'Teste';