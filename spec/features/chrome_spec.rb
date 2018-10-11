require 'rails_helper'

describe 'chrome fail' do
  it 'fails in chrome' do
    visit '/input'
    element = find('#test_number')
    5.times do
      page.driver.browser.action.move_to(element.native, 145, 5).click.click.click.click.click.perform
      sleep 1
    end
  end
end
