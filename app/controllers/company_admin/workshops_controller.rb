class CompanyAdmin::WorkshopsController < ApplicationController

  def index
    @pagy, @workshops = pagy(Workshop.visibles.order(start_at: :asc), items: 5)
    @all_workshops = Workshop.visibles.order(start_at: :asc)

    respond_to do |format|
      format.html
      format.csv { send_data @all_workshops.to_csv, filename: "workshop-#{Date.today}.csv" }
    end
  end
end
