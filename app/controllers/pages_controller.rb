class PagesController < ApplicationController
  def index
     @descriptions = Description.all
  end

  def about
    @abouts = About.all
     @missionvisions = Missionvision.all
  end

  def ethic
    @ethics = Ethic.all
  end

  def corporateteam
  end

  def trading
  end

  def membership
  end

  def contact
  end

  def missionvision
    @missionvisions = Missionvision.all
  end

  def report
  end

  def freeresource
  end

  def prremiunreourse
  end
end
