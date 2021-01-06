class CompanyAdmin::QuestionsController < ApplicationController

  def index
    @pagy, @questions = pagy(Question.all, items: 10)
    @all_questions = Question.all

    respond_to do |format|
      format.html
      format.csv { send_data @all_questions.to_csv, filename: "questions-#{Date.today}.csv" }
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to company_admin_dashboard_path
  end

end
