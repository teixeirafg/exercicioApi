Quando(/^inserir (\d+) na API$/) do |cep|
    @correios_httparty = CorreiosHttparty.new
    @correios_httparty.get_endereco_api_correios cep
  end
  
  Então(/^valido o retorno dos campos$/) do
    @correios_httparty.valida_endereco
  end
  
  Então(/^valido a mensagem de erro$/) do
    @correios_httparty.valida_cep_invalido
  end