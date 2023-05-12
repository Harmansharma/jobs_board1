class ProfilesController < ApplicationController

  def index
     
     @profiles= Profile.all
     
  end

def new 

  @profile =Profile.new
   end 

   def create

    @profile = Profile.new(profile_params)
      @profile.user = current_user

      
      if @profile.save
        redirect_to @profile

     else   
      
      render :new, unprocessable_entity

    end
end 

def show
  @profile =Profile.find(params[:id])
end 
     
  private
    def profile_params
      params.require(:profile).permit(:name, :father_name, :mother_name,:birth,:email,:addhar_no)
    end

end 

