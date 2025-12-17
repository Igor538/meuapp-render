# Dockerfile
FROM python:3.11-slim

# Definir diretório de trabalho
WORKDIR /app

# Copiar requirements e instalar dependências
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copiar código do projeto
COPY . .

# Comando padrão
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
