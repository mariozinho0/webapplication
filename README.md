# GoPark

Versão Spring Boot do Projeto...

##Link de acesso

Para acesso ao aplicativo Web
<br/>
<http://ec2-3-133-81-78.us-east-2.compute.amazonaws.com:8080/gopark/>
<br/>

Para acessar a API REST, altere o link conforme a rota desejada
<br/>

Exemplos
<br/>

`http://ec2-3-133-81-78.us-east-2.compute.amazonaws.com:8080/gopark/{rota}`
<br/>

`http://ec2-3-133-81-78.us-east-2.compute.amazonaws.com:8080/gopark/{rota}/{id}`


**Rotas disponivéis:**
* anuncio-rest
* veiculo-rest
   


## Importante

- Estão sendo usadas as anotações do lombok para gerar getters, setters e construtores.
- A versão do projeto continua com a estrutura do Spring MVC pras páginas e organização.

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
