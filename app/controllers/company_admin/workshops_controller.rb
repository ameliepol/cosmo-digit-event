class CompanyAdmin::WorkshopsController < ApplicationController

  def index
    @pagy, @workshops = pagy(Workshop.visibles, items: 10)

    respond_to do |format|
      format.html
      format.csv { send_data @workshops.to_csv, filename: "workshop-#{Date.today}.csv" }
    end
  end
end
