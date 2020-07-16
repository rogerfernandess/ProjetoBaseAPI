class Get
    include HTTParty
    base_uri $environment['url_base_api']
    format :json
    headers 'Content-Type' => 'application/json;charset=utf-8'

    def buscar_cpf(cpf)
        query = { :CPF      =>      cpf}
        lista = self.class.get("Unidas.API.Documento/documento/ListarDocumentosPendentesFiltrados",
        :query => query,
        :verify => false)    
    end
end