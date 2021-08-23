Dado("que acesso a tela de Login") do
  @navigator.tap_hamburger
  @navigator.tap_by_text("FORMS")
  @navigator.tap_by_text("LOGIN")
end

Quando("submeto minhas credenciais:") do |table|
  user = table.rows_hash
  @login.sign_in(user[:email], user[:senha])
end

Então('devo ver a notificação": {string}') do |notice|
  #log(get_source) #método q traz o xml q representa a página na respectiva etapa
  expect(@login.toast).to eql notice
end
