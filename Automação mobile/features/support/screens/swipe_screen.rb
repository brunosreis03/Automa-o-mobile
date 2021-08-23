class SwipeScreen
  def checkpoint
    return find_element(id: "io.qaninja.android.twp:id/rvList").displayed?
  end

  def swipe_cap
    coord = { start_x: 0.87, start_y: 0.2, offset_x: 0.38, offset_y: 0.2, duration: 2000 }
    Appium::TouchAction.new.swipe(coord).perform
  end

  def delete_cap
    find_element(id: "io.qaninja.android.twp:id/btnRemove").click
  end

  def message
    return find_element(id: "io.qaninja.android.twp:id/snackbar_text").text
  end
end
