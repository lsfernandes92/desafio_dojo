Dado(/^que esteja na pagina inicial do site$/) do
	visit('https://enterprise-demo.orangehrmlive.com/')
end

Quando(/^logar no site e pesquisar pelo empregado$/) do
    fill_in('txtUsername', :with => 'admin')
	fill_in('txtPassword', :with => 'admin')
	click_button('btnLogin')
	find(:xpath,'//*[@id="menu_pim_viewPimModule"]/b').click
	find(:xpath,'//*[@id="menu_pim_viewEmployeeList"]').click
	sleep 2
	fill_in('empsearch_employee_name_empName', :with => 'Tyrion Lannister Sand')
	sleep 2
	click_button('searchBtn')
	find(:xpath,'//*[@id="resultTable"]/tbody/tr/td[3]/a').click
end

Então(/^editar novo empregado$/) do
  	click_button('btnSave')
	fill_in('personal_txtEmpNickName', :with => 'Tanguinha frouxa')
	fill_in('personal_txtMilitarySer', :with => 'MacGyver')
	click_button('btnSave')
	assert_text('Personal Details')
	find(:id,'welcome').click
	find(:xpath,'//*[@id="welcome-menu"]/ul/li[2]/a').click
end