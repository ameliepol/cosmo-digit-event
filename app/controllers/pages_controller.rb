class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :programme, :erasmusplus, :inscription, :questions, :legal]

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

  def legal
  end

end
