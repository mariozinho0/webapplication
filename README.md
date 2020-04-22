# GoPark

Versão Spring Boot do Projeto...

## Importante

- Estão sendo usadas as anotações do lombok para gerar getters, setters e construtores.
- A versão do projeto continua com a estrutura do Spring MVC pras páginas e organização.
- Para criação e inserção das tabelas os scripts do banco estão dísponíveis em `oracle/scripts`.
- Ainda não há o registro de sessão que possibilita trabalhar com diferentes usuários, então, para que qualquer ação na aplicação funcione um usuário válido de id 1 deve existir, portanto, é FUNDAMENTAL gerar o banco através dos scripts encontrados em `oracle/scripts`.

## Utilização API

### Veículos

- Listar todos veículos cadastrados `/api/veiculo` (GET).

- Cadastrar veículos `/api/veiculo` (POST) e editar `/api/veiculo/id` (PUT), usar como base o JSON abaixo:

```json
{
    "marca": "CHEVROLET",
    "veiculo": "CARRO",
    "categoria": "HATCH",
    "modelo": "CRUZE",
    "ano": "2020",
    "placa": "CRN2020",
    "cor": "PRETO"
}
```

Listar veículo por id `/api/veiculo/{id}` (GET) e deletar por id `/api/veiculo/{id}` (DELETE).

### Anúncios

- Listar todos anúncios cadastrados `/api/anuncio` (GET).

- Cadastrar anúncios `/api/anuncio` (POST) e editar `/api/anuncio/id` (PUT), usar como base o JSON abaixo:

```json
{
    "preco": "80.80",
    "vagas": 2,
    "descricao": null,
    "categoria": "SUV",
    "modalidade": "HORA",
    "expiracao": null,
    "disponibilidade": "TARDE",
    "dimensoes": "30x30",
    "endereco": {
    	"cep": "06454202",
    	"endereco": "XXXXXXXXX",
    	"numero": 123,
    	"bairro": "aopdm",
    	"cidade": "uyttttt",
    	"usuario": {
    		"id": 1
    	},
    	"estado": "SP"
	},
    "foto": null,
    "data": "2020-03-29T19:49:44.000+0000",
    "servico": null
}
```

- Listar anúncio por id `/api/anuncio/id` (GET) e deletar por id `/api/anuncio/id` (DELETE).

- Buscar anúncios por cidade `/api/anuncio/cidade/nomedacidade` (GET).
