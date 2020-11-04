class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :programme, :confidential, :inscription, :questions, :legal]

  def home
  end

  def programme
    workshops_grouped = Workshop.visibles.order(start_at: :asc).group_by{|w| w.start_at.to_date}.values
    @workshops_1 = workshops_grouped[0]
    @workshops_2 = workshops_grouped[1]
  end

  def inscription
  end

  def questions
  end

  def legal
  end

  def confidential
  end

end
