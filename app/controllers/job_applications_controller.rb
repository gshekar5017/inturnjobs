class JobApplicationsController < ApplicationController
  def index
    @job = Jobs.all
  end
end
