class CompanyAdmin::WorkshopsController < ApplicationController

  def index
    @workshops = Workshop.visibles

    respond_to do |format|
      format.html
      format.csv { send_data @workshops.to_csv, filename: "workshop-#{Date.today}.csv" }
    end
  end
end
