from flask import Flask
import requests

app = Flask(__name__)

# URL da api de CRM
CRM_API_URL = 'http://localhost:3000/'

@app.route('/disparar-email', methods=['GET'])
def disparar_email():
    # Consumindo dados de clientes e campanhas
    clientes = requests.get().json()
    campanhas = requests.get().json()

    # Simulando o envio de e-mails
    for cliente in clientes:
        for campanha in campanhas:
            print(f'E-mail enviado para: {cliente['email']} com a campanha {campanha['nome']}')
            
    return "E-mails disparados com sucesso!"

if __name__ == '__main__':
    app.run(port=5000)