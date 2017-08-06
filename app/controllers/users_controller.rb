class UsersController < ApplicationController
  before_action :set_user, only: [:finish_signup]

  # GET/PATCH /users/:id/finish_signup
  # In the event email cannot be captured from oauth provider
  def finish_signup
    # authorize! :update, @user
    return unless request.patch? && params[:user] # && params[:user][:email]
    if @user.update(user_params)
      @user.skip_reconfirmation!
      sign_in(@user, bypass: true)
      redirect_to @user, notice: 'Your profile was successfully updated.'
    else
      @show_errors = true
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    accessible = [:email]
    accessible << [:password, :password_confirmation] unless params[:user][:password].blank?
    params.require(:user).permit(accessible)
  end
end
