require_relative '../objects/aprovar_reprovar_documento.rb'
retorno = AprovarReprovarDocumento.new

Dado("que eu solicite a aprovacao do documento {int} com a descricao {string}") do |int, string|
   @servico = retorno.servico_aprovar_documento(int, string)
end

Entao("sistema me retorna a aprovacao com sucesso") do
    expect(@servico.code).to eq (200)
end

Dado("que eu solicite a reprovacao do documento {int} com a descricao {string}") do |int, string|
    @servico = retorno.servico_reprovar_documento(int, string)
end

Entao("sistema me retorna a reprovacao com sucesso") do
    expect(@servico.code).to eq (200)
end