class ProfilesController < ApplicationController

  def index
    respond_with Profile.all
  end

  def show
    respond_with Profile.find_by(permalink: params[:id])
  end

end
