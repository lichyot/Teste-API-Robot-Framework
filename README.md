
# Testando API com Robot Framework

Projeto do curso do [Vini Andrade](https://www.linkedin.com/in/vinicius-trindade-81536b198/) de Teste de API com Robot Framework.



## Referência

 - [Link do Curso](https://robotcourses.com.br/courses/testando-apis-com-robot-framework/)


## Apêndice

Usamos o poetry nesse projeto, no lugar do pip.


## Rodando localmente



Criando o ambiente virtual
```bash
  poetry shell
```

Sabendo o caminho do Python no Windows
```bash
  poetry run where python
```

Sabendo o caminho do Python no Unix
```bash
  poetry run which python
```

Instalando as dependências
```bash
  poetry install
```

Rodando apenas os testes do POST
```bash
  robot -d log -i post_order .
```

Rodando apenas os testes do GET
```bash
  robot -d log -i get_order .
```

Rodando tudo
```bash
  robot -d log .
```

Rodando com variável de linha de comando
```bash
  robot -d log -v env:qa .
  robot -d log -v env:prod .
  robot -d log -v env:preprod .
```

Obs: Apenas esse vai funcionar, pq não tem as URL`s de PROD e PREPROD.
```bash
  robot -d log -v env:qa .
```
