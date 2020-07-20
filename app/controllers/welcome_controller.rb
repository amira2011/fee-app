class WelcomeController < ApplicationController
  def index
  @fee_recievable=   Student.all.sum(:total)
  @students= Student.all
  end

  def hello

  end
end
