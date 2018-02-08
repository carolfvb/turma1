require 'selenium-webdriver'

Before do | scn |
  Capybara.current_session.driver.browser.manage.delete_all_cookies
  Capybara.page.driver.browser.manage.window.maximize
end
