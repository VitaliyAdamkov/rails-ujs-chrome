require 'rails_helper'

describe 'input type number serial increment click', js: true do
  def click_it page
    visit '/input'
    %w[left right].each do |klass|
      id = "#{klass}_number"
      element = page.driver.browser.find_element id: id
      5.times do
        state = page.driver.browser.action.move_to(element, 145, 5)
        10.times { state = state.click }
        state.perform
        sleep 0.5
      end
      expect(find("div.#{klass}").find('form')).to have_content('5 - 5') if klass == 'left'
      # page.save_and_open_screenshot("#{id}.png")
    end
  end

  it 'in chrome' do
    Capybara.default_driver = :selenium_chrome
    click_it page
  end

  it 'in firefox' do
    Capybara.default_driver = :selenium
    click_it page
  end
end
