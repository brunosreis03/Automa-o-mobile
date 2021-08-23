require "allure-cucumber"
require "appium_lib"

require "fileutils"

# Limpa os logs e os screenshots
FileUtils.rm_f(Dir.glob("logs/*.json"))
FileUtils.rm_f(Dir.glob("logs/*.png"))

caps = Appium.load_appium_txt file: File.expand_path("caps/android.txt", __dir__), verbose: true #método q carrega o txt de capabilites
Appium::Driver.new(caps, true) #inicializando os capabilites
Appium.promote_appium_methods Object # poder chamar métodos do appium dentro do cucumber
