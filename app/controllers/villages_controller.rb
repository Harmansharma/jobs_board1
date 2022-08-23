class VillagesController < ApplicationController
  def index
     
     @villages= Village.all
     
  end

def new 

  @village =Village.new
   end 

   def create

    @village = Village.new(village_params)
      
      if @village.save
        redirect_to @village

     else   
      
      render :new, unprocessable_entity

end
end 

def show
  @village =Village.find(params[:id])
end 
     
  private
    def village_params
      params.require(:village).permit(:village_name, :village_block, :pin_code,:post_office,:district)
    end

end 
