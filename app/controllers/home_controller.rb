class HomeController < ApplicationController
  def index
    if student_signed_in?
      redirect_to new_profile_path
      else if
       employer_signed_in?
         redirect_to new_post_path
       end
    end
  end
end


