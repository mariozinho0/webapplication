# GoPark

Versão Spring Boot do Projeto...

## Importante

- Estão sendo usadas as anotações do lombok para gerar getters, setters e construtores.
- A versão do projeto continua com a estrutura do Spring MVC pras páginas e organização.


## Endpoints

**Veículos**

Listar veículos:
<br/>
`/api/veiculo/`

Cadastrar veículos, passar dados via BODY no formato JSON:
<br/>
`/api/veiculo/`

Listar por id, atualizar e deletar:
<br/>
`/api/veiculo/{id}`

**Anúncios**

Listar anuncios:
<br/>
`/api/anuncio/`

Cadastrar anúncio, passar dados via BODY no formato JSON:
<br/>
`/api/anuncio/`

Listar por id, atualizar e deletar:
<br/>
`/api/anuncio/{id}`

Buscar anúncio por cidade:
<br/>
`/api/anuncio/cidade/{cidade}`

## JSON

Edições e inserções em **anúncio** devem ter como base o seguinte JSON:

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

Edições e inserções em **veículo** devem ter como base o seguinte JSON:

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
