Dado("que acesso a tela Avengers") do
  @navigator.tap_by_text("LISTA")
end

Quando("eu apago o Capitão América") do
  expect(@swipe.checkpoint).to be true
  @swipe.swipe_cap
  @swipe.delete_cap
end

Então("devo ver a seguinte mensagem: {string}") do |expect_message|
  expect(@swipe.message).to eql expect_message
end
