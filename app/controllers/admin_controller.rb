class AdminController < ApplicationController
 	before_action :authenticate_user!
  def index
  	 @descriptions = Description.all
  	 @missionvisions = Missionvision.all
  	 @ethics = Ethic.all
  	 @abouts = About.all
  end
end
