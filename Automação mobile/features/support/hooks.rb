Before do
  @navigator = Navigator.new
  @login = LoginScreen.new
  @input = InputScreen.new
  @button = ButtonScreen.new
  @swipe = SwipeScreen.new
  driver.start_driver #da início a sessão do appium através do servidor
  driver.manage.timeouts.implicit_wait = 10 #tempo para encontrar elemento
  # Evento de click no botão Comecar
  find_element(xpath: "//android.widget.Button[@text='COMEÇAR']").click   #xpath é bom em mobile
end

After do |scenario|
  binary_shot = driver.screenshot_as(:base64) #chama o driver do appium e printa no formato base64

  temp_shot = "logs/temp_shot.png"

  File.open(temp_shot, "wb") do |f|
    f.write(Base64.decode64(binary_shot).force_encoding("UTF-8")) # transforma o screenshot do formato binário em um arquivo
  end

  Allure.add_attachment(
    name: "screenshot",
    type: Allure::ContentType::PNG,
    source: File.open(temp_shot),
  )
  driver.quit_driver #desliga o drive do appium
end
