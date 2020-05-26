class ProfileController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def edit
    @user = current_user
  end

end
