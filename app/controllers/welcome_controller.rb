class WelcomeController < ApplicationController
  def index
  @fee_recievable=   Student.all.sum(:total)
  end
end
