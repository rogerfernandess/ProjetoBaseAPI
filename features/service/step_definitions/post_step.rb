require_relative '../objects/post.rb'
retorno = Post.new

Dado("que eu usuário cadastro o cpf {int}") do |int|
    @servico = retorno.que_eu_usuário_cadastro_o_cpf (int)
end

Entao("sistema me retorna informações do CPF cadastrado") do
    expect(@servico.code).to eq(200)
end

#ALGUNS EXEMPLOS DE VALIDAÇÕES

#expect(@servico.parsed_response.to_s).to include("abcd")
#expect(@servico.parsed_response.to_s).not_to include("abcd") 
#expect(@servico.parsed_response).to be true
#expect(@servico.parsed_response).to be false
#expect(@servico.body).not_to eq("abcd")
#expect(@servico.empty?).to be false