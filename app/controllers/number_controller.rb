class NumberController < ApplicationController
  skip_before_action :verify_authenticity_token

  def input
  end

  def update
    sleep 0.5
  end
end
