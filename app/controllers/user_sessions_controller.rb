class UserSessionsController < ApplicationController
  skip_before_action :require_login, only: %i[new create]

  def new; end

  def create
    @user = login(params[:email], params[:password])
    if @user
      flash[:success] = t('flash.login_success')
      redirect_to boards_path
    else
      flash[:danger] = t('flash.login_fault')
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    logout
    flash[:success] = t('flash.logout')
    redirect_to root_path, status: :see_other
  end
end
