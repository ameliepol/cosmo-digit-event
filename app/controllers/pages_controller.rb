class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :programme, :erasmusplus, :inscription, :questions, :contact, :legal]

  def home
  end

  def programme
  end

  def inscription
  end

  def erasmusplus
  end

  def questions
  end

  def contact
  end

  def legal
  end

end
