Quando("interajo com dropdown e select") do
    visit '/buscaelementos/dropdowneselect'
    find('.btn.dropdown-button').click
    find('#dropdown3').click
    sleep(5)
    select 'Chrome', from: 'dropdown'
    sleep(5)
    find('option[value="2"]').select_option
    sleep(5)
end
  
Quando("preencho o autocomplete") do
    
end 