class CompanyAdmin::WorkshopsController < ApplicationController

  def index
    @event = Event.last
    @workshops = @event.workshops.visibles

    respond_to do |format|
      format.html
      format.csv { send_data Workshop.to_csv, filename: "workshop-#{Date.today}.csv" }
    end
  end
end
