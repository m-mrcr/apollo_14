class MissionController > ApplicationController

  def index
    @missions = Mission.all
  end
  
end
