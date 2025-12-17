# 🚀 MeuApp Render

#### Este projeto é um exemplo de aplicação **Django** com **PostgreSQL**, configurado para rodar com **Docker**
---

## 🛠️ Tecnologias utilizadas

- 🐍 Python 3.11  
- 🌐 Django 5.2  
- 🗄️ PostgreSQL 15  
- 🐳 Docker e Docker Compose  
- 🚀 Gunicorn (para produção)  
- ☁️ Render (plataforma de deploy)

---

## 🔑 Variáveis de ambiente (`.env`)

- SECRET_KEY=django-insecure-xxxxxxxxxxxxxxxxxxxxxxxxxxxx
- DEBUG=True
- DATABASE_URL=postgresql://<USUARIO>:<SENHA>@<HOST_INTERNO>:5432/<NOME_BANCO>


> No Render, use a **Internal Database URL** do banco que você criou.

---

## 🐳 Rodando localmente com Docker

```bash
Construir os containers:
# docker-compose build

Subir os containers:
# docker-compose up -d

Verificar se estão rodando:
# docker ps

Acessar a aplicação:
# http://localhost:8000

Rodar testes:
# docker-compose run tests
```

## ⚡ Comandos úteis
```bash
# Coletar arquivos estáticos
docker-compose run web python manage.py collectstatic

# Rodar migrations
docker-compose run web python manage.py migrate

# Entrar no shell do Django
docker-compose run web python manage.py shell
```

## 📝 Observações
```bash
# Use 0.0.0.0 no runserver para que o Django fique acessível fora do container

# Para produção, utilize Gunicorn
gunicorn meuapp.wsgi:application --bind 0.0.0.0:8000

# O banco interno do Render deve ser usado sempre para comunicação entre serviços

# Para produção, utilize Gunicorn (gunicorn meuapp.wsgi:application --bind 0.0.0.0:8000).

```
