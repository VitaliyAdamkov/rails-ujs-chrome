require 'rails_helper'

describe 'chrome fail' do
  it 'fails in chrome' do
    visit '/input'
    %w[left_number right_number].each do |id|
      element = find("##{id}")
      5.times do
        page.driver.browser.action.move_to(element.native, 145, 5)
                                  .click
                                  .click
                                  .click
                                  .click
                                  .click
                                  .perform
      end

      page.save_and_open_screenshot("#{id}.png")
    end
  end
end
