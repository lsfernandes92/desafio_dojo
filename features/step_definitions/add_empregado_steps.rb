Dado(/^que esteja na home do site$/) do
	visit('https://enterprise-demo.orangehrmlive.com/')
end

Quando(/^logar no site$/) do
    fill_in('txtUsername', :with => 'admin')
	fill_in('txtPassword', :with => 'admin	')
	click_button('btnLogin')
end

Então(/^adicionar novo empregado$/) do
	find(:xpath,'//*[@id="menu_pim_viewPimModule"]/b').click
	find(:xpath,'//*[@id="menu_pim_addEmployee"]').click
	fill_in('firstName', :with => 'Tyrion')
	fill_in('middleName', :with => 'Lannister')
	fill_in('lastName', :with => 'Sand')
	select('Australian Regional HQ', :from=> 'location')
	click_button('btnSave')
	assert_text('Personal Details')
	find(:id,'welcome').click
	find(:xpath,'//*[@id="welcome-menu"]/ul/li[2]/a').click
	sleep 2
end