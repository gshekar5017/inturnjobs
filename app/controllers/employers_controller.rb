class EmployersController < ApplicationController
  before_action :authenticate_employer!
  def new
  end
end
