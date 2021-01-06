class CompanyAdmin::WorkshopsController < ApplicationController

  def index
    @pagy, @workshops = pagy(Workshop.visibles, items: 10)
    @all_worshops = Workshop.visibles

    respond_to do |format|
      format.html
      format.csv { send_data @all_workshops.to_csv, filename: "workshop-#{Date.today}.csv" }
    end
  end
end
