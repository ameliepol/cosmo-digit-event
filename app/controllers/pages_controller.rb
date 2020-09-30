class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :programme, :erasmus, :inscription, :questions, :contact]

  # def home
  # end

  # def programme
  # end

  # def inscription
  # end

  # def erasmus
  # end

  # def questions
  # end

  # def contact
  # end

end
