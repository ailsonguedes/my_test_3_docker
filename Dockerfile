# Imagem base do Python 3.9
FROM python:3.9

# Copiar os arquivos do projeto para a imagem
COPY . /app
WORKDIR /app

# Instalar as dependências do projeto
RUN pip install --no-cache-dir -r requirements.txt

# Expor a porta que o Flask irá utilizar
EXPOSE 5000

# Executar o comando para rodar o Flask
CMD ["python", "app.py"]
