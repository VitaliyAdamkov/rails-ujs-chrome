require 'rails_helper'

describe 'chrome fail' do
  it 'fails in chrome' do
    visit '/input'
    %w[left_number right_number].each do |id|
      element = find("##{id}")
      element.click_at()
      5.times do
        page.driver.browser.action.move_to(element.native, 145, 5)
                                  .click
                                  .click
                                  .click
                                  .click
                                  .click
                                  .perform
        sleep 0.5
      end

      page.save_and_open_screenshot("#{id}.png")
    end
    sleep 5
  end
end
