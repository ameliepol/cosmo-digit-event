class CompanyAdmin::QuestionsController < ApplicationController

  def index
    @questions = Question.all

    respond_to do |format|
      format.html
      format.csv { send_data @questions.to_csv, filename: "questions-#{Date.today}.csv" }
    end
  end
end
