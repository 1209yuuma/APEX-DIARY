class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      reset_session  # ログインの直前に必ずこれを書くこと
      log_in user
      redirect_to legend_url(current_legends)
    else
      flash.now[:danger] = 'Invalid email/password combination'
    render 'new', status: :unprocessable_entity
    end
  end

  def destroy
  end
end
