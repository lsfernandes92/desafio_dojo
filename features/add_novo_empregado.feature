#language: pt
#utf-8

Funcionalidade: Entrar no site ORANGEHRM 
	Eu como Admin
	Quero logar no site
	Para adicionar um novo empregado

Cenario: Adicionar novo empregado
	Dado que esteja na home do site
	Quando logar no site
	Então adicionar novo empregado
	