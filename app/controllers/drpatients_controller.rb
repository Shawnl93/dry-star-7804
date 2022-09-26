class DrpatientsController < ApplicationController

  def destroy
    Drpatient.find(params[:id]).destroy
    redirect_to "/doctors/#{@shawn.id}"
  end
end
