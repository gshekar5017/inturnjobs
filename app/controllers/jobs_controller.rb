class JobsController < ApplicationController
 before_action :authenticate_employer!
  def new
  end
  def create
    render plain: params[:job].inspect
  end
end
