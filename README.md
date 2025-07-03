# Testando API com Robot Framework

[![Robot Framework](https://img.shields.io/badge/Robot%20Framework-6.0+-blue.svg)](https://robotframework.org/)
[![Python](https://img.shields.io/badge/Python-3.8+-green.svg)](https://www.python.org/)
[![Poetry](https://img.shields.io/badge/Poetry-latest-orange.svg)](https://python-poetry.org/)

Projeto do curso do [Vini Trindade](https://www.linkedin.com/in/vinicius-trindade-81536b198/) de Teste de API com Robot Framework.

## 📚 Referência

- [Link do Curso](https://robotcourses.com.br/courses/testando-apis-com-robot-framework/)

## 📋 Apêndice

Usamos o **Poetry** nesse projeto, no lugar do pip.

## 🚀 Rodando localmente

### Configuração do Ambiente

**Criando o ambiente virtual:**
```bash
poetry shell
```

**Verificando o caminho do Python:**

Windows:
```bash
poetry run where python
```

Unix/Linux/macOS:
```bash
poetry run which python
```

**Instalando as dependências:**
```bash
poetry install
```

### Executando os Testes

**Rodando apenas os testes do POST:**
```bash
robot -d log -i post_order .
```

**Rodando apenas os testes do GET:**
```bash
robot -d log -i get_order .
```

**Rodando todos os testes:**
```bash
robot -d log .
```

### Executando com Variáveis de Ambiente

```bash
robot -d log -v env:qa .
robot -d log -v env:prod .
robot -d log -v env:preprod .
```

> **⚠️ Observação:** Apenas o ambiente QA está configurado atualmente, pois não há URLs configuradas para PROD e PREPROD.

```bash
robot -d log -v env:qa .
```

---

**Desenvolvido com ❤️ usando Robot Framework**
