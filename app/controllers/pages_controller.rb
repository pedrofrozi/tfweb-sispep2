class PagesController < ApplicationController
  def home
    if user_signed_in?
      @profile = current_user.profile
      if !@profile.nil? # if user has a profile, send him there
        redirect_to profile_path(@profile.id)
      else
        redirect_to new_profile_path # if not, go create one
      end
    # else : load sispep starting page      
    end
  end

  def help
  end
end
