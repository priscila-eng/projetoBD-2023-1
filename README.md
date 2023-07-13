# Projeto de Banco de Dados - 2023/1
Esse repositório contém o script SQL que implementa o schema e regra de negócio para o sistema de avaliação de disciplina e professor.

# Responsável
Este código foi implementado por:

Priscila Silva - 190094699

# Como executar o projeto
1 - Instale o flask seguindo este tutorial: https://flask.palletsprojects.com/en/2.3.x/installation/

2 - Instale o mySQL e o mySQL workbench

3 - É necessário ter um usuário no mySQL

4 - No mySQL worbench, crie um schema e dá dois cliques nele

5 - No mySQL worbench, execute o script que esttá no arquivo seed/scriptCompleto.sql

6 - Clone o repositório, lembre que precisa ter o pip e python instalado na máquina

7 - Instale o flask-mysqld com o comando: pip install flask_mysqldb

8 - Abra o arquivo api.py e coloque nas linhas 7 a 10 as informações do banco de dados que você criou no worbench. Se não tiver senha no usuário, deixe assim: ''.

9 - Rode o comando: flask --app api run --debug
