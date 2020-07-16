#language: pt
#encoding: utf-8
@cadastrar
Funcionalidade: Cadastrar CPF
Eu como usuário
Desejo cadastrar um cpf

@cadastrar_cpf
Esquema do Cenario: Cadastrar CPF novo
Dado que eu usuário cadastro o cpf <cpf> 
Entao sistema me retorna informações do CPF cadastrado
Exemplos:
|   cpf     |
|12345678911|
