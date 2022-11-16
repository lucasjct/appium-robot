from robot.libraries.BuiltIn import BuiltIn
from robot.api.deco import keyword
from appium.webdriver.common.touch_action import TouchAction


@keyword(name="Drag Drop")
def drag_and_drop(element_id, p_origin, p_target):

    appiumLib = BuiltIn().get_library_instance('AppiumLibrary')
    driver = appiumLib._current_application()

    element_origin = driver.find_elements('id',(element_id))[int(p_origin)]
    element_target = driver.find_elements('id',(element_id))[int(p_target)]

    actions = TouchAction(driver)
    actions.long_press(element_origin).move_to(element_target)
    actions.release()
    actions.perform()

