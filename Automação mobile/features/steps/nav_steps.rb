Quando("acesso o Menu") do
  @navigator.tap_hamburger
end

Então("vejo a lista de opções de navegação") do
  expect(@navigator.list).to be true
end
