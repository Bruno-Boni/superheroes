# O que é a API superheroes?

É uma API criada usando Ruby on Rails onde você pode criar vários heróis diferentes e relacioná-los com os universos que eles vieram.
Por exemplo: O Hulk veio do universo da Marvel e o Batman veio do universo da DC Comics.


## Configuração do banco de dados

Para que você consiga rodar esta aplicação, é necessário que você altere no arquivo database.yml os valores de usuário "seuusuariopostgresql" e senha "suasenhapostgresql" para os valores corretos que estão na sua máquina para o banco de dados PostgreSQL.

### Como criar os meus heróis?

1. Para fazer isso, você deve entrar no console do Ruby on Rails através do comando "rails console" e usar o comando Hero.create!.
2. O universe_id = 1 é a Marvel e o universe_id = 2 é a DC Comics. 
3. Todos os heróis possuem um gênero que nesta aplicação está nomeado como "gender" e é dividido em "M" para masculino e "F" para feminino.
4. Exemplo de criação de super-herói: Hero.create! name: "Pantera-negra", universe_id: 2, gender: "M"
