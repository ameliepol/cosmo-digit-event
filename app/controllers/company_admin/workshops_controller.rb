class CompanyAdmin::WorkshopsController < ApplicationController

  def index
    # @workshops = Workshop.all

    respond_to do |format|
      format.html
      format.csv { send_data Workshop.to_csv, filename: "workshop-#{Date.today}.csv" }
    end
  end
end
