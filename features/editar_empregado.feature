#language: pt
#utf-8

Funcionalidade: Entrar no site ORANGEHRM 
	Eu como Admin
	Quero logar no site
	Para editar um novo empregado

Cenario: Editar empregado
	Dado que esteja na home do site
	Quando logar no site e pesquisar pelo empregado
	Então editar novo empregado
	