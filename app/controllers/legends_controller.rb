class LegendsController < ApplicationController
  def new
    @legends = User.new
  end

  def show
    @legends = User.find(params[:id])
  end

  def create
    @legends = User.new(user_params)
    if @legends.save 
      redirect_to legends_url(@legends)
    else
      render "new",  status: :unprocessable_entity
    end
  end

  private
    
   def user_params
    params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
   end
end
