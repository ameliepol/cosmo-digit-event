class QuestionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :show, :create]
  skip_before_action :verify_authenticity_token, only: [:create]

  def show
    @event = Event.find(params[:event_id])
    @question = Question.find(params[:id])
  end

  def new
    @event = Event.find(params[:event_id])
    @question = Question.new
  end

  def create
    @event = Event.find(params[:event_id])
    @question = Question.new(question_params)
    @question.event = @event
    if @question.save
      redirect_to event_question_path(@event, @question)
    else
      flash[:alert] = @question.errors.full_messages.join("; ")
      render :new
    end
  end

  private

  def question_params
    params.require(:question).permit(
      :first_name,
      :last_name,
      :email,
      :organization,
      :position,
      :company,
      :content,
      :accepted_conditions)
  end

  def active_navbar_link
    set_active_navbar_link(4)
  end
end
