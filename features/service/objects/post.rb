class Post
    include HTTParty
    base_uri $environment['url_base_api']
    format :json
    headers 'Content-Type' => 'application/json;charset=utf-8'
    
    def cadastrar_cpf(cpf)
        body = 
        {
        :cpf                       => cpf}.to_json
    self.class.post("/Unidas.API.Documento/documento/AprovarDocumento",
              :body   => body,
              :verify => false)
    end

end
