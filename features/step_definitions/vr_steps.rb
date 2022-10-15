Dado('o endereço da API para buscar os ENUMs') do
  $uri = 'https://portal.vr.com.br/api-web/comum/enumerations/VRPAT'
end

Quando('realizar uma requisição get') do
  #verify false necessário devido a erro de certificado
  $response = HTTParty.get($uri, :verify => false)
end

Então('iremos verificar se a chave existe') do
  #Verifica se a chave existe dentro do body
  expect($response.body["typeOfEstablishment"]).to eq("typeOfEstablishment")
end

Então('imprimir um dos resultados aleatoriamente') do
  #Converte o body para JSON
  $body_as_json = JSON.parse($response.body)
  #Gera um numero aleatório entre 0 e a quantidade de campos retornados
  $rand = rand($body_as_json["typeOfEstablishment"].length)
  #Imprime o valor de acordo com o número gerado anteriormente.
  puts $body_as_json["typeOfEstablishment"][$rand]
end