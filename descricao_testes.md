# Descrição dos Testes Executados

Este documento detalha os testes unitários configurados e executados no projeto para garantir o correto funcionamento dos ViewSets e Serializers.

## Como Executar os Testes

Para rodar os testes você mesmo no seu terminal, utilize o seguinte comando na raiz do projeto (`MOD15-view-set-DRF`):

```bash
poetry run pytest -v
```

---

## Relação de Testes Executados

A suíte de testes é composta por **9 testes**, divididos entre validações de Serializers e ViewSets:

### 1. Aplicativo `order` (Pedidos)

* **`TestOrderSerializer`**
  * `test_order_serializer`: Garante que os campos do serializer de pedido (como produtos associados e dados do usuário) sejam serializados e formatados corretamente.
* **`TestOrderViewSet`**
  * `test_order`: Valida a rota de listagem (`GET` em `/order/`). Cria uma categoria, um produto e um pedido e valida se o endpoint retorna os dados corretos com o status `HTTP 200 OK`.
  * `test_create_order`: Valida a criação de um pedido (`POST` em `/order/`) passando um payload válido com IDs de produtos e usuário, assegurando que o status retornado seja `HTTP 201 CREATED`.

### 2. Aplicativo `product` (Produtos e Categorias)

* **`TestCategorySerializer`**
  * `test_order_serializer`: Valida a serialização dos dados de categoria, certificando-se de que os dados de entrada correspondam aos campos esperados pelo serializer.
* **`TestProductSerializer`**
  * `test_product_serializer`: Valida que o serializer de produto processa corretamente campos como nome, preço, status de ativo e categorias associadas.
* **`CategoryViewSet`**
  * `test_get_all_category`: Valida a listagem de categorias (`GET` em `/category/`). Confirma que o status seja `HTTP 200 OK` e que os registros mockados estejam presentes na resposta.
  * `test_create_category`: Valida a criação de uma categoria (`POST` em `/category/`). Envia os dados de uma nova categoria e valida o retorno `HTTP 201 CREATED` e a persistência no banco de dados.
* **`TestProductViewSet`**
  * `test_get_all_product`: Valida a listagem de produtos (`GET` em `/product/`). Como esta rota exige autenticação por Token, ela insere as credenciais de autorização no cabeçalho HTTP da requisição e valida o retorno correto dos dados.
  * `test_create_product`: Valida a criação de um produto (`POST` em `/product/`). Autentica a requisição via Token, envia o payload contendo o preço e categoria do produto e valida o retorno `HTTP 201 CREATED` e a criação do registro no banco.
