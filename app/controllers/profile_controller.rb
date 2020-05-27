class ProfileController < ApplicationController
  # Profile controller - Demonstrate how the session works

  before_action :authenticate_user!

  def index
  end

  def edit
    @user = current_user
  end

end
