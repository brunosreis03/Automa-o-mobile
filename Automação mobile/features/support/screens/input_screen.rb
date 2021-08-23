class InputScreen
  def check_input(inputs, language_name)
    find_element(xpath: "//android.widget.#{inputs}[contains(@text,'#{language_name}')]").click #xpath no qual busca um elemento q contém o texto Ruby
  end

  def checked?(inputs, language_name)
    return find_element(xpath: "//android.widget.#{inputs}[contains(@text,'#{language_name}')]")
  end
end
