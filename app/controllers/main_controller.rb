class MainController < ApplicationController
  def index
  	@company = Company.all
  end
end
