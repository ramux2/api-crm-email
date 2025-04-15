from flask import Flask, jsonify
from http import HTTPStatus

app = Flask(__name__)

# Dados mockados de clientes
CLIENTES = [
    {"id": 1, "nome": "Vinicius Sieben", "email": "vinicius.sieben@email.com"},
    {"id": 2, "nome": "Guilherme Ramos", "email": "guilherme.ramos@email.com"},
    {"id": 3, "nome": "João Barp", "email": "joao.barp@email.com"},
    {"id": 4, "nome": "Barbara Woitas", "email": "barbara.woitas@email.com"},
]

# Dados mockados de campanhas
CAMPANHAS = [
    {"id": 1, "nome": "Lançamento de Produto"},
    {"id": 2, "nome": "Campanha de Fidelidade"},
    {"id": 3, "nome": "Black Friday"},
]

@app.route('/clientes', methods=['GET'])
def buscar_clientes():
    return jsonify(CLIENTES), HTTPStatus.OK

@app.route('/campanhas', methods=['GET'])
def buscar_campanhas():
    return jsonify(CAMPANHAS), HTTPStatus.OK

if __name__ == '__main__':
    app.run(port=3000)