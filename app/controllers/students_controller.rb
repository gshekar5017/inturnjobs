class StudentsController < ApplicationController
 before_action :authenticate_student!
  def new
  end
end
