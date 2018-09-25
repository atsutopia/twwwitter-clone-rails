class SessionController < ApplicationController
  def new
    @form = SessionForm.new
  end

  def create
    @form = SessionForm.new(session_params)
    if @form.valid?
      session[:user_id] = @form.user.id
      redirect_to timeline_index_path
    else
      render :new
    end
  end

  private
  def session_params
    params.require(:session_form).permit(:account)
  end
end
