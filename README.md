# Projeto de Banco de Dados - 2023/1
Esse repositório contém o script SQL que implementa o schema e regra de negócio para o sistema de avaliação de disciplina e professor.

# Responsável
Este código foi implementado por:

Priscila Silva - 190094699

# Como rodar o projeto

1. Instale o Flask (segui este tutorial: https://flask.palletsprojects.com/en/2.3.x/installation/#install-flask)
2. Instale o MySQLdb (segui este tutorial: https://www.geeksforgeeks.org/profile-application-using-python-flask-and-mysql/)
3. Instale o MySQL Workbench para facilitar executar o SCRIPT SQL
4. Configure um usuário para o MySQL
5. Crie um schema, pelo WOrkbench pode ser mais simples
6. Execute o script SQL que está no arquivo seed/scriptCompleto.sql
7. Clone o repositório
8. Configure no arquivo api.py, as linhas 7 a 10, sendo a linha 7 preenchido com "localhost"
9. Execute o projeto com o comando flask --app api run --debug
