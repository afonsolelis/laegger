# Nome do Projeto

Este é um desafio para a empresa Laegger. O objetivo do projeto é criar uma API que recebe uma lista de elementos e retorna a lista invertida.

## Como rodar o projeto

1. Clone o repositório com `git clone <url do repositório>`.
2. Navegue até o diretório do projeto com `cd <nome do projeto>`.
3. Instale as dependências com `bundle install`.
4. Inicie o servidor com `rails server`.
5. Agora você pode acessar a API em `http://localhost:3000`.

## Como rodar os testes

Para rodar os testes, você pode usar o comando `rails test` no terminal. Isso irá executar todos os testes do projeto.

## Testando a API

Você pode testar a API usando o comando `curl`. Aqui está um exemplo de como inverter uma lista usando o endpoint `/listas/inverter`:

```bash
curl -X POST -H "Content-Type: application/json" -d '{"list": ["Oi", 5, "1/1/2005 14:00:00", 1.5, "Tchau"]}' http://localhost:3000/listas/inverter
