from flask import Flask, request, render_template, redirect, url_for, session
from flaskext.mysql import MySQL
 
app = Flask(__name__)
app.secret_key = 'userInfo'
 
app.config['MYSQL_DATABASE_HOST'] = ''
app.config['MYSQL_DATABASE_USER'] = ''
app.config['MYSQL_DATABASE_PASSWORD'] = ''
app.config['MYSQL_DATABASE_DB'] = ''
 
mysql = MySQL()
mysql.init_app(app)
conn = mysql.connect()
cursor = conn.cursor()

mysql = MySQL(app)

@app.route("/", methods=['POST', 'GET'])
def login():
    if request.method == 'POST':
        email = request.form.get('email')
        password = request.form.get('password')
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute("SELECT * FROM Usuario WHERE email = %s AND senha = %s", (email, password))
        user = cursor.fetchall()
        session['user'] = user
        conn.commit()
        cursor.close()
        conn.close()
        if user:
            return redirect(url_for('home'))
        else:
            return redirect(url_for('register'))
    return render_template('login.html')

@app.route("/register", methods=['POST', 'GET'])
def register():
    if request.method == 'POST':
        email = request.form.get('email')
        nome = request.form.get('nome')
        curso = request.form.get('curso')
        matricula = request.form.get('matricula')
        senha = request.form.get('senha')
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute("INSERT INTO Usuario (email, senha, nome, curso, matricula) VALUES (%s,%s,%s,%s,%s)", (email, senha, nome, curso, matricula))
        cursor.execute("SELECT * FROM Usuario WHERE email = %s AND senha = %s", (email, senha))
        user = cursor.fetchall()
        session['user'] = user
        conn.commit()
        cursor.close()
        conn.close()
        if user:
            return redirect(url_for('home'))
        else:
            return redirect(url_for('register'))
    return render_template('register.html')

@app.route('/avaliacaoTurma', methods=['GET'])
def avaliacaoTurma():
    conn = mysql.connect()
    cursor = conn.cursor()
    cursor.execute(''' SELECT aturma.comentario,aturma.idAvaliacaoTurma,aturma.classificacao,t.periodo,t.numeroTurma,d.nome,dis.nome,aturma.codUsuarioAvaliacao 
                        FROM AvaliacaoTurma aturma, Turma t, Disciplina dis, Professor p, Departamento d 
                        where t.idTurma = aturma.codTurmaAvaliada and t.codDisciplinaTurma = dis.idDisciplina and t.codProfessorTurma = p.idProfessor and p.idDepartamento = d.idDepartamento; ''')
    data = cursor.fetchall()
    conn.commit()
    cursor.close()
    conn.close()
    user = session['user']
    return render_template('avaliacaoTurma.html', data=data, user=user)

@app.route('/deleteAvaliacaoTurma/<int:id>', methods=['POST'])
def deleteAvaliacaoTurma(id):
    user = session['user']
    conn = mysql.connect()
    cursor = conn.cursor()
    if user[0][4]:
        cursor.execute(''' DELETE FROM AvaliacaoTurma WHERE idAvaliacaoTurma = %s''', (id))
    else:
        cursor.execute(''' DELETE FROM AvaliacaoTurma WHERE idAvaliacaoTurma = %s and codUsuarioAvaliacao = %s''', (id, user[0][0]))
    conn.commit()
    cursor.close()
    conn.close()
    return redirect(url_for('avaliacaoTurma'))

@app.route('/editarAvaliacaoTurma/<int:id>', methods=['POST', 'GET'])
def editarAvaliacaoTurma(id):
    user = session['user']
    if request.method == 'POST':
        conn = mysql.connect()
        cursor = conn.cursor()
        comentario = request.form.get('comentario')
        classificacao = request.form.get('avaliacao')
        if user[0][4]:
            cursor.execute('UPDATE AvaliacaoTurma SET comentario = %s, classificacao=%s WHERE idAvaliacaoTurma = %s', (comentario, classificacao, id))
        else:
            cursor.execute('UPDATE AvaliacaoTurma SET comentario = %s, classificacao=%s WHERE idAvaliacaoTurma = %s and codUsuarioAvaliacao = %s', (comentario, classificacao, id, user[0][0]))
        conn.commit()
        cursor.close()
        conn.close()
        return redirect(url_for('avaliacaoTurma'))
    else:
        return render_template('editarAvaliacaoTurma.html')

@app.route('/editarAvaliacaoProfessor/<int:id>', methods=['POST', 'GET'])
def editarAvaliacaoProfessor(id):
    user = session['user']
    if request.method == 'POST':
        conn = mysql.connect()
        cursor = conn.cursor()
        comentario = request.form.get('comentario')
        classificacao = request.form.get('avaliacao')
        if user[0][4]:
            cursor.execute('UPDATE AvaliacaoProfessor SET comentario = %s, classificacao=%s WHERE idAvaliacaoProfessor = %s', (comentario, classificacao, id))
        else:
            cursor.execute('UPDATE AvaliacaoProfessor SET comentario = %s, classificacao=%s WHERE idAvaliacaoProfessor = %s and codUsuarioAvaliacao = %s', (comentario, classificacao, id, user[0][0]))
        conn.commit()
        cursor.close()
        conn.close()
        return redirect(url_for('home'))
    else:
        return render_template('editarAvaliacaoProfessor.html')

@app.route('/deleteAvaliacaoProfessor/<int:id>', methods=['POST'])
def deleteAvaliacaoProfessor(id):
    user = session['user']
    conn = mysql.connect()
    cursor = conn.cursor()
    if user[0][4]:
        cursor.execute(''' DELETE FROM AvaliacaoProfessor WHERE idAvaliacaoProfessor = %s''', (id))
    else:
        cursor.execute(''' DELETE FROM AvaliacaoProfessor WHERE idAvaliacaoProfessor = %s and codUsuarioAvaliacao = %s''', (id, user[0][0]))
    conn.commit()
    cursor.close()
    conn.close()
    return redirect(url_for('home'))

@app.route('/criarDenuncia/<int:id>/<string:tipo>', methods=['POST', 'GET'])
def criarDenuncia(id, tipo):
    user = session['user']
    if request.method == 'POST':
        comentario = request.form.get('comentario')
        conn = mysql.connect()
        cursor = conn.cursor()
        if tipo == "professor":
            cursor.execute('''INSERT INTO DenunciaProfessor (comentario, status, codAvaliacaoProfessorDenuncia, codUsuarioDenunciaProfessor) VALUES (%s,false,%s,%s)''', (comentario,id,user[0][0]))
            conn.commit()
            cursor.close()
            conn.close()
            return redirect(url_for('minhasDenunciasProfessor'))
        elif tipo == "turma":
            cursor.execute('''INSERT INTO DenunciaTurma (comentario, status, codDenunciaTurmaAvaliacao, codUsuarioDenunciaTurma) VALUES (%s,false,%s,%s)''', (comentario,id,user[0][0]))
            conn.commit()
            cursor.close()
            conn.close()
            return redirect(url_for('minhasDenunciasTurma'))
    return render_template('criarDenuncia.html', user=user)

@app.route('/adicionarAvaliacaoProfessor', methods=['POST', 'GET'])
def adicionarAvaliacaoProfessor():
    if request.method == 'GET':
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM Professor')
        data = cursor.fetchall()
        conn.commit()
        cursor.close()
        conn.close()
        user = session['user']
        return render_template('adicionarAvaliacaoProfessor.html', data=data, user=user)
    if request.method == 'POST':
        user = session['user']
        comentario = request.form.get('comentario')
        classificacao = request.form.get('avaliacao')
        codProfessorAvaliado = request.form.get('professor')
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute("INSERT INTO AvaliacaoProfessor (comentario, classificacao, codProfessorAvaliado, codUsuarioAvaliacao) VALUES (%s,%s,%s,%s)", (comentario, classificacao, codProfessorAvaliado, user[0][0]))
        conn.commit()
        cursor.close()
        conn.close()
        return redirect(url_for('home'))

@app.route('/adicionarAvaliacaoTurma', methods=['POST', 'GET'])
def adicionarAvaliacaoTurma():
    if request.method == 'GET':
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute('SELECT * FROM avaliacaoUnB.turmaDisciplina;')
        disciplinas = cursor.fetchall()
        conn.commit()
        cursor.close()
        conn.close()
        user = session['user']
        return render_template('adicionarAvaliacaoTurma.html', disciplinas=disciplinas, user=user)
    if request.method == 'POST':
        user = session['user']
        comentario = request.form.get('comentario')
        classificacao = request.form.get('avaliacao')
        codTurmaAvaliada = request.form.get('turma')
        conn = mysql.connect()
        cursor = conn.cursor()
        cursor.execute("INSERT INTO AvaliacaoTurma (comentario, classificacao, codTurmaAvaliada, codUsuarioAvaliacao) VALUES (%s,%s,%s,%s)", (comentario, classificacao, codTurmaAvaliada, user[0][0]))
        conn.commit()
        cursor.close()
        conn.close()
        return redirect(url_for('avaliacaoTurma'))

@app.route('/logout', methods=['GET'])
def logout():
    conn = mysql.connect()
    cursor = conn.cursor()
    session.clear()
    conn.commit()
    cursor.close()
    conn.close()
    return redirect(url_for('login'))

@app.route('/avaliacaoProfessor', methods=['GET'])
def home():
    conn = mysql.connect()
    cursor = conn.cursor()
    cursor.execute('SELECT ap.comentario,ap.idAvaliacaoProfessor,ap. classificacao,  p.nome, d.nome, ap.codUsuarioAvaliacao FROM AvaliacaoProfessor ap, Professor p, Departamento d where ap.codProfessorAvaliado = p.idProfessor and p.idDepartamento = d.idDepartamento;')
    data = cursor.fetchall()
    conn.commit()
    cursor.close()
    conn.close()
    user = session['user']
    if not user:
        return redirect(url_for('login'))
    return render_template('home.html', data=data, user=user)

@app.route('/perfil', methods=['GET'])
def perfil():
    conn = mysql.connect()
    cursor = conn.cursor()
    user = session['user']
    cursor.execute('SELECT * FROM Usuario u where u.idUsuario = %s', (user[0][0]))
    data = cursor.fetchall()
    conn.commit()
    cursor.close()
    conn.close()
    return render_template('meuPerfil.html', data=data, user=user)

@app.route('/deleteUsuario/<int:id>', methods=['POST'])
def deletarUsuario(id):
    conn = mysql.connect()
    cursor = conn.cursor()
    user = session['user']
    if user[0][0] == id or user[0][4]:
        cursor.execute('DELETE FROM Usuario u where u.idUsuario = %s', (id))
    conn.commit()
    cursor.close()
    conn.close()
    return render_template('register.html')

@app.route('/verDenunciasTurma', methods=['GET'])
def minhasDenunciasTurma():
    conn = mysql.connect()
    cursor = conn.cursor()
    user = session['user']
    cursor.execute('SELECT * FROM DenunciaTurma dt where dt.codUsuarioDenunciaTurma = %s', (user[0][0]))
    data = cursor.fetchall()
    conn.commit()
    cursor.close()
    conn.close()
    return render_template('minhasDenunciasTurma.html', data=data, user=user)

@app.route('/verDenunciasProfessor', methods=['GET'])
def minhasDenunciasProfessor():
    conn = mysql.connect()
    cursor = conn.cursor()
    user = session['user']
    cursor.execute('SELECT * FROM DenunciaProfessor dp where dp.codUsuarioDenunciaProfessor = %s', (user[0][0]))
    data = cursor.fetchall()
    conn.commit()
    cursor.close()
    conn.close()
    return render_template('minhasDenunciasProfessor.html', data=data, user=user)

@app.route('/editarUsuario/<int:id>', methods=['GET', 'POST'])
def editarUsuario(id):
    user = session['user']
    if request.method == 'POST':
        conn = mysql.connect()
        cursor = conn.cursor()
        matricula = request.form.get('matricula')
        curso = request.form.get('curso')
        senha = request.form.get('senha')
        if (user[0][0] == id or user[0][4]) and (matricula and curso and senha):
            cursor.execute('UPDATE Usuario u SET matricula=%s, curso=%s, senha=%s where u.idUsuario = %s', (matricula, curso, senha, id))
        elif (user[0][0] == id or user[0][4]) and (matricula and not curso and not senha):
            cursor.execute('UPDATE Usuario u SET matricula=%s where u.idUsuario = %s', (matricula, id))
        elif (user[0][0] == id or user[0]) and (matricula and curso and not senha):
            cursor.execute('UPDATE Usuario u SET matricula=%s, curso=%s where u.idUsuario = %s', (matricula, curso, id))
        elif (user[0][0] == id or user[0]) and (matricula and not curso and senha):
            cursor.execute('UPDATE Usuario u SET matricula=%s, senha=%s where u.idUsuario = %s', (matricula, senha, id))
        elif (user[0][0] == id or user[0]) and (not matricula and curso and senha):
            cursor.execute('UPDATE Usuario u SET curso=%s, senha=%s where u.idUsuario = %s', (curso, senha, id))
        elif (user[0][0] == id or user[0]) and (not matricula and curso and not senha):
            cursor.execute('UPDATE Usuario u SET curso=%s where u.idUsuario = %s', (curso, id))
        elif (user[0][0] == id or user[0]) and (not matricula and not curso and senha):
            cursor.execute('UPDATE Usuario u SET senha=%s where u.idUsuario = %s', (senha, id))
        conn.commit()
        cursor.close()
        conn.close()
        return redirect(url_for("perfil"))
    return render_template('editarUsuario.html', user=user)
