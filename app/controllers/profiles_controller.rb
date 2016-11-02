class ProfilesController < ApplicationController
 before_action :authenticate_student!
  def new
    #@profile=Profile.new
    if current_student.profile
      @profile = current_student.profile
    else
      @profile = current_student.profile.build!
    end
  end
 def create
   @profile = current_student.profile
   @profile.save(params[:profile])
   redirect_to profile_url(@profile)
 end

  def show
    @profile=Profile.find(params[:id])
  end
  def index
  end

end
