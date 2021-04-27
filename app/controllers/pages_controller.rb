class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :programme, :confidential, :inscription, :questions, :legal]
  skip_before_action :active_navbar_link, only: [:programme]

  def home
  end

  def programme
    set_active_navbar_link(3)
    workshops_grouped = Workshop.visibles.order(start_at: :asc).group_by{|w| w.start_at.to_date}.values
    @workshops_1 = workshops_grouped[0]
    @workshops_2 = workshops_grouped[1]
    @workshops_3 = workshops_grouped[2]
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
