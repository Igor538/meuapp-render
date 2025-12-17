FROM python:3.12

# Instalar dependências do sistema
RUN apt-get update && apt-get install -y gdal-bin libgdal-dev

# Copiar requirements.txt e instalar pacotes Python
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar o código
COPY . .

# Comando para iniciar o app
CMD ["gunicorn", "meuapp.wsgi:application"]
