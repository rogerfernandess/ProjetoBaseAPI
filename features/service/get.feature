#language: pt
#encoding: utf-8
@consultar
Funcionalidade: Consulta CPF
Eu como usuário
Desejo consultar o CPF no sistema

@consultar_cpf
Esquema do Cenario: Consulta CPF Existente
Dado que eu usuário consulte o cpf <cpf> 
Entao sistema me retorna informações do CPF
Exemplos:
|   cpf     |
|12345678911|
