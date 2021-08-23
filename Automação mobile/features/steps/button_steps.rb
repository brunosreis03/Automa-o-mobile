Dado("que acesso a tela de Click Longo") do
  @navigator.tap_hamburger
  @navigator.tap_by_text("BOTÕES")
  @navigator.tap_by_text("CLIQUE LONGO")
end

Quando("faco um click longo") do
  @button.click_longo
end

Então("devo ver um botão com o texto: {string}") do |expect_text|
  expect(@button.button_text).to eql expect_text
end
