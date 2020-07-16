require_relative '../objects/buscar_documento_pendente_filtrado.rb'
retorno = BuscarDocumentoPendenteFiltrado.new

Dado("que eu usuário do cpf {string} solicite consultar um documento de status {int} da categoria {int} cliente preenchendo os campos dinâmicos {string}") do |string, int, int2, string2|
    @servico = retorno.buscar_documento_pendente_filtrado_cliente(string, int, int2, string2)
end

Entao("sistema me retorna o documento específico de cliente caso o mesmo exista") do
    expect(@servico.code).to eq(200)
end

Dado("que eu usuário do cpf {string} solicite consultar um documento de status {int} da categoria {int} multa preenchendo os campos dinâmicos {string}") do |string, int, int2, string2|
    @servico = retorno.buscar_documento_pendente_filtrado_multa(string, int, int2, string2)
end

Entao("sistema me retorna o documento específico de multa caso o mesmo exista") do
    expect(@servico.code).to eq(200)
end

Dado("que eu usuário do cpf {string} solicite consultar um documento de status {int} da categoria {int} reserva preenchendo os campos dinâmicos {string} {int}") do |string, int, int2, string2, int3|
    @servico = retorno.buscar_documento_pendente_filtrado_reserva(string, int, int2, string2, int3)
end

Entao("sistema me retorna o documento específico de reserva caso o mesmo exista") do
    expect(@servico.code).to eq(200)
end

Dado("que eu usuário do cpf {string} solicite consultar um documento de status {int} da categoria {int} notadebito preenchendo os campos dinâmicos {string} {int}") do |string, int, int2, string2, int3|
    @servico = retorno.buscar_documento_pendente_filtrado_notadebito(string, int, int2, string2, int3)
end

Entao("sistema me retorna o documento específico de notadebito caso o mesmo exista") do
    expect(@servico.code).to eq(200)
end

Dado("que eu usuário do cpf {string} solicite consultar um documento de status {int} da categoria {int} ra preenchendo os campos dinâmicos {string} {int}") do |string, int, int2, string2, int3|
    @servico = retorno.buscar_documento_pendente_filtrado_ra(string, int, int2, string2, int3)
end

Entao("sistema me retorna o documento específico de ra caso o mesmo exista") do
    expect(@servico.code).to eq(200)
end

Dado("que eu usuário do cpf {string} solicite consultar um documento de status {int} da categoria {int} extratocobranca preenchendo os campos dinâmicos {string} {int} {int}") do |string, int, int2, string2, int3, int4|
    @servico = retorno.buscar_documento_pendente_filtrado_extratocobranca(string, int, int2, string2, int3, int4)
end

Entao("sistema me retorna o documento específico de extratocobranca caso o mesmo exista") do
    expect(@servico.code).to eq(200)
end

Dado("que eu usuário do cpf {string} solicite consultar um documento de status {int} da categoria {int} notacredito preenchendo os campos dinâmicos {string} {int}") do |string, int, int2, string2, int3|
    @servico = retorno.buscar_documento_pendente_filtrado_notacredito(string, int, int2, string2, int3)
end

Entao("sistema me retorna o documento específico de notacredito caso o mesmo exista") do
    expect(@servico.code).to eq(200)
end

Dado("que eu usuário do cpf {string} solicite consultar um documento de status {int} da categoria {int} ficha preenchendo os campos dinâmicos {string} {int}") do |string, int, int2, string2, int3|
    @servico = retorno.buscar_documento_pendente_filtrado_ficha(string, int, int2, string2, int3)
end
  
Entao("sistema me retorna o documento específico de ficha caso o mesmo exista") do
    expect(@servico.code).to eq(200)
end