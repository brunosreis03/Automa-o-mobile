Dado("que acesso a tela de Botões de Radio") do
  @navigator.tap_hamburger
  @navigator.tap_by_text("INPUTS")
  @navigator.tap_by_text("BOTÕES DE RADIO")
end

Quando("eu escolho a opcao Ruby") do
  @input.check_input("RadioButton", "Ruby")
end

Então("a opcao deve ser marcada") do
  expect((@input.checked?("RadioButton", "Ruby")).checked).to eql "true"
end

Dado("que acesso a tela Checkbox") do
  @navigator.tap_hamburger
  @navigator.tap_by_text("INPUTS")
  @navigator.tap_by_text("CHECKBOX")
end

Quando("eu marco a opcao Ruby") do
  @input.check_input("CheckBox", "Ruby")
end

Então("esta opcao deve estar marcada") do
  expect((@input.checked?("CheckBox", "Ruby")).checked).to eql "true"
end

Quando("eu marco as seguintes techs:") do |table|
  @techs = table.hashes
  @techs.each do |item|
    @input.check_input("CheckBox", item["tech"])
  end
end

Então("todas essas opcoes devem estar marcadas") do
  @techs.each do |item|
    expect((@input.checked?("CheckBox", item["tech"])).checked).to eql "true"
  end
end
