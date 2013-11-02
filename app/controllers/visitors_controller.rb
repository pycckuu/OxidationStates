class VisitorsController < ApplicationController

  def index
    @oxidation_states = OxidationState.all
  end

end
