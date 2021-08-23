class ButtonScreen
  def click_longo
    button = find_element(id: "io.qaninja.android.twp:id/long_click")
    Appium::TouchAction.new.long_press(element: button).perform
  end

  def button_text
    return find_element(id: "io.qaninja.android.twp:id/long_click").text
  end
end
